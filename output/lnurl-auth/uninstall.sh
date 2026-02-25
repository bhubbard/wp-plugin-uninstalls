#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-callback-url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-redirect-url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-login-options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-node-banlist'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-node-allowlist'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-usercreation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-usercreation-prefix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-usercreation-roles'"

