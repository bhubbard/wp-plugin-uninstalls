#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ja_github_repos_%' OR option_name LIKE '_site_transient_ja_github_repos_%'"

