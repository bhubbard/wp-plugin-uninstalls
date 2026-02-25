#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-no-private-title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-no-protected-title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-master-url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-master-pwd'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-no-admin-password'"

