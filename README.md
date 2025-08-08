# GitHub Repository Jacking Test Configuration

This README contains various GitHub repository references to test repo jacking detection capabilities.

## Existing Repositories (should NOT be flagged)

- [Express.js](https://github.com/expressjs/express) - Web framework for Node.js
- [React](https://github.com/facebook/react) - JavaScript library for building user interfaces  
- [Vue.js](https://github.com/vuejs/vue) - Progressive JavaScript framework
- [Angular](https://github.com/angular/angular) - Platform for building mobile and desktop web applications
- [Bootstrap](https://github.com/twbs/bootstrap) - CSS framework

## Non-existent Repositories (SHOULD be detected as vulnerable)

### Direct GitHub Links
- https://github.com/nonexistent-owner-test/fake-vulnerable-repo
- https://github.com/vulnerable-user-dc-test/nonexistent-popular-package
- https://github.com/bogus-org-security-test/invalid-repository-claim
- https://github.com/fake-company-test/repo-jacking-vulnerability
- https://github.com/test-missing-owner/critical-security-package

### Git Clone URLs
```bash
git clone https://github.com/nonexistent-dev-test/fake-authentication-lib.git
git clone https://github.com/missing-org-test/vulnerable-crypto-package.git
git clone https://github.com/bogus-security-team/fake-security-tool.git
```

### SSH Format URLs
```bash
git@github.com:nonexistent-maintainer/fake-popular-utility.git
git@github.com:vulnerable-team-test/missing-open-source-tool.git
git@github.com:fake-dev-collective/nonexistent-framework.git
```

### Package Manager References with GitHub URLs

#### NPM with GitHub Dependencies
```json
{
  "dependencies": {
    "fake-github-npm-package": "git+https://github.com/nonexistent-npm-owner/fake-package.git",
    "vulnerable-git-dependency": "https://github.com/missing-js-dev/vulnerable-utility.git#v1.0.0"
  }
}
```

#### Composer with GitHub Sources
```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/nonexistent-php-dev/fake-composer-package"
    },
    {
      "type": "git",
      "url": "https://github.com/vulnerable-php-team/missing-framework.git"
    }
  ]
}
```

#### Go Modules with GitHub
```go
require (
    github.com/nonexistent-go-dev/fake-library v1.0.0
    github.com/vulnerable-golang-team/missing-tool v2.1.0
    github.com/bogus-go-org/nonexistent-package v1.5.0
)
```

## Testing Redirection Scenarios

### Valid Redirections (should NOT be flagged)
- https://github.com/microsoft/vscode (redirects to existing repo)
- https://github.com/facebook/react (canonical URL)

### Invalid Redirections (SHOULD be detected)
- https://github.com/old-owner-moved/fake-popular-package (owner changed, repo deleted)
- https://github.com/renamed-org-test/vulnerable-legacy-tool (organization renamed, repo abandoned)
- https://github.com/deleted-user-test/critical-security-lib (user deleted, repo claimed)

## Organization-Level Testing

### Non-existent Organizations (SHOULD be detected)
- https://github.com/fake-security-org-test
- https://github.com/nonexistent-company-dev
- https://github.com/vulnerable-org-claim-test
- https://github.com/bogus-foundation-security
- https://github.com/missing-enterprise-team

### Existing Organizations (should NOT be flagged)
- https://github.com/microsoft
- https://github.com/google
- https://github.com/apache
- https://github.com/nodejs

## Subdirectory and Branch References

### Non-existent Repos with Specific Paths
- https://github.com/fake-monorepo-owner/nonexistent-workspace/tree/main/packages/vulnerable-lib
- https://github.com/missing-team-test/fake-monorepo/blob/develop/libs/security-tool
- https://github.com/bogus-enterprise/nonexistent-repo/tree/release/modules/auth

### Non-existent Branches on Non-existent Repos
- https://github.com/vulnerable-maintainer/fake-repo/tree/feature/security-fix
- https://github.com/nonexistent-dev-collective/missing-tool/tree/hotfix/vulnerability-patch

## Raw Content URLs (for direct file access)

### Non-existent Raw URLs (SHOULD be detected)
- https://raw.githubusercontent.com/fake-config-owner/nonexistent-repo/main/config.json
- https://raw.githubusercontent.com/vulnerable-scripts-team/missing-automation/master/deploy.sh
- https://raw.githubusercontent.com/bogus-infra-org/fake-kubernetes-configs/main/deployment.yaml

## Archive and Release URLs

### Non-existent Release Downloads (SHOULD be detected)
- https://github.com/fake-release-owner/nonexistent-tool/releases/download/v1.0.0/binary.tar.gz
- https://github.com/vulnerable-software-team/missing-app/archive/refs/tags/v2.1.0.zip
- https://github.com/bogus-publisher/fake-software/releases/latest/download/installer.exe

## Wiki and Pages References

### Non-existent Wiki/Pages (SHOULD be detected)
- https://github.com/fake-docs-owner/nonexistent-project/wiki
- https://fake-org-test.github.io/missing-documentation-site
- https://vulnerable-team-docs.github.io/nonexistent-guide

## Docker Images with GitHub References

### Non-existent Repos Referenced in Docker
```dockerfile
# Should be detected as vulnerable
RUN git clone https://github.com/fake-docker-owner/nonexistent-utility.git /app/utils
COPY --from=https://github.com/vulnerable-container-team/missing-base-image.git /src /app/src
```

## API and Webhook URLs

### Non-existent GitHub API References (SHOULD be detected)
- https://api.github.com/repos/fake-api-owner/nonexistent-repo
- https://api.github.com/orgs/vulnerable-org-test
- https://api.github.com/users/bogus-user-claim-test

## Installation Instructions with Vulnerable References

### Shell Commands
```bash
# These should be detected as vulnerable GitHub references
curl -sSL https://github.com/fake-installer-owner/nonexistent-cli/releases/download/v1.0.0/install.sh | bash
wget https://github.com/vulnerable-download-team/missing-binary/releases/latest/download/app
git clone https://github.com/bogus-quickstart/fake-template.git && cd fake-template && npm install
```

### Docker Commands  
```bash
# Should detect vulnerable GitHub reference
docker run --rm -v $(pwd):/workspace fake-registry.com/nonexistent-owner/vulnerable-image:latest
```

## Links in Documentation

For more information, visit our [nonexistent documentation](https://github.com/fake-docs-team/missing-project-docs) or check out the [vulnerable examples](https://github.com/bogus-examples-org/nonexistent-samples).

## Contact and Support

- Issues: https://github.com/fake-support-team/nonexistent-issue-tracker/issues
- Discussions: https://github.com/vulnerable-community/missing-discussions/discussions
- Security: https://github.com/bogus-security-team/fake-security-repo/security/advisors