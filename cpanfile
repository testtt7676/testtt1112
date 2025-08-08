# Test configuration for Perl dependency confusion detection
# cpanfile format

# Existing modules (should NOT be flagged)
requires 'Mojolicious', '9.32';
requires 'DBI', '1.643';
requires 'DBD::SQLite', '1.70';
requires 'Plack', '1.0048';
requires 'JSON', '4.05';
requires 'LWP::UserAgent', '6.60';
requires 'DateTime', '1.59';

# Non-existent modules (SHOULD be detected as vulnerable)
requires 'This::Module::Does::Not::Exist', '1.000';
requires 'Fake::Vulnerable::Perl::Module', '2.100';
requires 'Nonexistent::CPAN::Dependency', '1.500';
requires 'Bogus::Perl::Library::Test', '0.300';
requires 'Invalid::CPAN::Vulnerability::Check', '1.230';

# Testing different version specifiers
requires 'Vulnerable::Version::Range::Test', '>= 1.0, < 2.0';
requires 'Fake::Module::With::Minimum', '>= 1.20';
requires 'Nonexistent::Exact::Version', '== 1.000';

# Development dependencies
on 'develop' => sub {
    requires 'Perl::Critic', '1.140';
    requires 'Perl::Tidy', '20220613';
    # Non-existent dev modules
    requires 'Fake::Dev::Tool::Perl', '1.000';
    requires 'Nonexistent::Development::Module', '2.000';
    requires 'Vulnerable::Dev::Dependency::Test', '1.500';
};

# Test dependencies
on 'test' => sub {
    requires 'Test::More', '1.302190';
    requires 'Test::Exception', '0.43';
    requires 'Test::Deep', '1.130';
    # Non-existent test modules
    requires 'Fake::Testing::Framework::Perl', '1.000';
    requires 'Nonexistent::Test::Utilities', '2.000';
    requires 'Vulnerable::Test::Module', '1.500';
};

# Configure phase dependencies
on 'configure' => sub {
    requires 'Module::Build', '0.4231';
    # Non-existent configure modules
    requires 'Fake::Build::Tool', '1.000';
    requires 'Nonexistent::Configure::Module', '2.000';
};

# Runtime recommendations (not strict requirements)
recommends 'YAML::XS', '0.82';
recommends 'JSON::XS', '4.03';
# Non-existent recommendations
recommends 'Fake::Performance::Module', '1.000';
recommends 'Nonexistent::Optional::Feature', '2.000';

# Suggestions
suggests 'Redis', '2.000';
suggests 'Memcached::libmemcached', '1.001801';
# Non-existent suggestions
suggests 'Fake::Cache::Backend', '1.000';
suggests 'Nonexistent::Optional::Backend', '2.000';

# Conflicts (modules that shouldn't be installed together)
conflicts 'Fake::Conflicting::Module', '< 2.0';
conflicts 'Nonexistent::Bad::Module';

# Features (optional functionality groups)
feature 'database', 'Database support' => sub {
    requires 'DBD::Pg', '3.15.2';
    requires 'DBD::MySQL', '4.050';
    # Non-existent database modules
    requires 'Fake::Database::Driver', '1.000';
    requires 'Nonexistent::DB::Module', '2.000';
};

feature 'web', 'Web framework support' => sub {
    requires 'Catalyst::Runtime', '5.90128';
    requires 'Dancer2', '0.301004';
    # Non-existent web modules
    requires 'Fake::Web::Framework', '1.000';
    requires 'Nonexistent::HTTP::Module', '2.000';
};

# GitHub repository references for detection
# These would typically be in META.json or other metadata files
# repository.url: https://github.com/nonexistent-owner/fake-perl-repo
# repository.type: git
# bugtracker.web: https://github.com/fake-user/vulnerable-perl-module/issues