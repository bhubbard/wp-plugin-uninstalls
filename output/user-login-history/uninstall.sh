#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_basics'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_advanced'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fa_userloginhostory_user_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fa_userloginhostory_user_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fa_userloginhostory_user_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fa_userloginhostory_user_timezone'"
