#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%portal_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_token'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%scans_temp_save'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%scans_temp_save'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%scans_temp_save'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%scans_temp_save'"
