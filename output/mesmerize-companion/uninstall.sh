#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mesmerize_companion_filtered_defaults'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_show_on_front'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_page_on_front'"
wp option delete 'sidebars_widgets'
wp option delete 'msm_companion_start_source'
wp option delete 'msm_companion_activation_time'
wp option delete 'msm_companion_pro_activation_time'
wp option delete 'cp_initialize_notifications'
wp option delete 'widget_block'
wp option delete 'active_sitewide_plugins'
wp option delete 'feature_popup_demo_import_disabled'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'extendthemes_load_data-sections'
wp transient delete 'extendthemes_load_data-headers'
wp transient delete 'mesmerize_menu_items_keys_match'
wp transient delete 'mesmerize_ocdi_import_page_mod'
wp transient delete 'mesmerize_ocdi_import_wc_categories'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_mesmerize_front_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_mesmerize_front_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_mesmerize_front_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_mesmerize_front_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
