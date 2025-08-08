defmodule HexDcTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :hex_dc_test,
      version: "1.0.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: "Test configuration for Hex dependency confusion detection",
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :crypto],
      mod: {HexDcTest.Application, []}
    ]
  end

  defp deps do
    [
      # Existing packages (should NOT be flagged)
      {:phoenix, "~> 1.7.0"},
      {:ecto_sql, "~> 3.9"},
      {:postgrex, ">= 0.0.0"},
      {:jason, "~> 1.4"},
      {:plug_cowboy, "~> 2.6"},
      
      # Non-existent packages (SHOULD be detected as vulnerable)
      {:this_package_does_not_exist, "~> 1.0"},
      {:fake_vulnerable_elixir_package, "~> 2.1"},
      {:nonexistent_hex_dependency, "~> 1.5"},
      {:bogus_elixir_library_test, "~> 0.3"},
      {:invalid_hex_vulnerability_check, "~> 1.2"},
      
      # Testing different version constraints
      {:vulnerable_package_with_range, ">= 1.0.0 and < 2.0.0"},
      {:fake_package_with_pre_release, "~> 1.0.0-alpha"},
      {:nonexistent_package_with_path, path: "../fake-package"},
      
      # Git dependencies for repo detection testing
      {:fake_git_package, git: "https://github.com/nonexistent-owner/nonexistent-elixir-repo.git"},
      {:vulnerable_git_dependency, git: "https://github.com/fake-user/vulnerable-elixir-repo.git", tag: "v1.0.0"},
      {:bogus_git_package_branch, git: "https://github.com/invalid-org/fake-elixir-package.git", branch: "main"},

      # Development and test dependencies
      {:ex_doc, "~> 0.29", only: :dev, runtime: false},
      {:dialyxir, "~> 1.2", only: [:dev], runtime: false},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      
      # Non-existent dev dependencies
      {:fake_dev_tool_elixir, "~> 1.0", only: :dev},
      {:nonexistent_testing_framework, "~> 2.0", only: :test},
      {:vulnerable_dev_dependency, "~> 1.5", only: [:dev, :test]},
      
      # Optional dependencies
      {:fake_optional_package, "~> 1.0", optional: true},
      {:nonexistent_optional_hex, "~> 2.0", optional: true},
      
      # Override dependencies
      {:vulnerable_override_package, "~> 1.0", override: true},
      {:fake_override_dependency, "~> 2.0", override: true},
      
      # Hex.pm organization packages
      {:nonexistent_org_package, "~> 1.0", organization: "fake_org"},
      {:vulnerable_private_org_hex, "~> 2.0", organization: "bogus_company"}
    ]
  end

  defp package do
    [
      description: "Test package for dependency confusion detection",
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/example/hex-dc-test",
        "Fake Link" => "https://github.com/nonexistent-owner/fake-repo"
      },
      maintainers: ["Test Author"]
    ]
  end
end