#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_no_access_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auto_login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auto_login_url'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_addresses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_addresses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_addresses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_addresses'"
