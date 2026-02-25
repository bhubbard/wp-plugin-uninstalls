#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_post_meta_title'
wp option delete 'repeat_meta_post_type'
wp option delete 'repeat_main_number'
wp option delete 'repeat_meta_number'
wp option delete 'repeat_main_array_save'
wp option delete 'repeat_menu_name'
wp option delete 'repeat_main_name'
wp option delete 'repeat_menu_des'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reapeter_meta_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reapeter_meta_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reapeter_meta_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reapeter_meta_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'reapeter_meta_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'reapeter_meta_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'reapeter_meta_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'reapeter_meta_id'"
