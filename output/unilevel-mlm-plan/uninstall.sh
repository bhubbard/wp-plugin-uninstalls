#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ump_general_settings'
wp option delete 'ump_register_page_id'
wp option delete 'ump_downlines_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_ump_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_ump_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_ump_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_ump_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_item_ump'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_item_ump'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_item_ump'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_item_ump'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ump_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ump_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ump_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ump_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ump_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ump_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ump_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ump_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ump_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ump_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ump_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ump_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ump_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ump_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ump_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ump_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ump_sponsor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ump_sponsor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ump_sponsor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ump_sponsor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ump_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ump_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ump_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ump_phone'"
