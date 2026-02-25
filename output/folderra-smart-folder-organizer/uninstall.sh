#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fold82sm_media_organizer_db_version'
wp option delete 'fold82sm_auto_folders_created'
wp option delete 'fold82sm_show_activation_notice'
wp option delete 'fold82sm_show_welcome'
wp option delete 'fold82sm_settings'

# Delete Transients
wp transient delete 'fold82sm_db_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folder_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folder_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folder_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folder_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folder_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folder_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folder_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folder_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folder_auto_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folder_auto_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folder_auto_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folder_auto_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folder_is_special'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folder_is_special'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folder_is_special'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folder_is_special'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allowed_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allowed_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allowed_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allowed_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folder_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folder_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folder_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folder_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folder_created_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folder_created_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folder_created_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folder_created_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'folderra_dynamic_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'folderra_dynamic_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'folderra_dynamic_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'folderra_dynamic_rule'"
