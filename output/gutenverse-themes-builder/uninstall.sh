#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-font-%'"
wp option delete 'gtb_active_theme_id'
wp option delete 'gutenverse-license'
wp option delete 'gtb_plugin_notice_flag'
wp option delete 'gutenverse-companion-imported-options'
wp option delete 'gtb_theme_info_altered_3'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-color-import-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pattern_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pattern_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pattern_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pattern_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pattern_theme_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pattern_theme_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pattern_theme_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pattern_theme_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pattern_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pattern_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pattern_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pattern_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtb_page_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtb_page_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtb_page_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtb_page_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtb_page_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtb_page_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtb_page_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtb_page_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtb_page_is_homepage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtb_page_is_homepage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtb_page_is_homepage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtb_page_is_homepage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtb_page_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtb_page_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtb_page_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtb_page_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtb_page_theme_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtb_page_theme_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtb_page_theme_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtb_page_theme_id'"
