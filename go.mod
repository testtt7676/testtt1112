module github.com/example/go-dc-test

go 1.20

// Existing modules (should NOT be flagged)
require (
	github.com/gin-gonic/gin v1.9.1
	github.com/gorilla/mux v1.8.0
	github.com/stretchr/testify v1.8.4
	golang.org/x/crypto v0.14.0
	gorm.io/gorm v1.25.5
)

// Non-existent modules (SHOULD be detected as vulnerable)
require (
	github.com/nonexistent-owner/fake-go-library v1.0.0
	github.com/vulnerable-user/nonexistent-go-module v2.1.0
	github.com/bogus-org/invalid-dependency-test v1.5.0
	github.com/fake-company/go-vulnerability-test v0.1.0
	example.com/nonexistent/private-module v1.2.3
)

// Testing different version constraints
require (
	github.com/fake-modules/version-range-test v1.0.0-20231101000000-abcdef123456
	github.com/nonexistent/pre-release-test v2.0.0-alpha.1
	github.com/bogus/commit-hash-test v0.0.0-20231101120000-123456789abc
)

// Replace directives for testing
replace (
	github.com/old-module/replaced => github.com/nonexistent-owner/replacement-module v1.0.0
	github.com/internal-module => ./local/nonexistent-path
)

// Exclude for testing
exclude (
	github.com/excluded/vulnerable-module v1.0.0
)

// Indirect dependencies
require (
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/nonexistent-indirect/fake-dependency v1.0.0 // indirect
	github.com/vulnerable-indirect/bogus-module v2.0.0 // indirect
)

// Private proxy configuration testing
// To test: set GOPROXY=https://proxy.company-internal.com,proxy.golang.org,direct