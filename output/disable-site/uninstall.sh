#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_splash_page_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_access_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_authenticated_user_access_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allowed_ips'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_html'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_return_503'"

