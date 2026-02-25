#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'recently_activated'
wp option delete 'ReduxFrameworkPlugin_ACTIVATED_NOTICES'
wp option delete 'redux_support_hash'
wp option delete 'active_sitewide_plugins'
wp option delete 'ReduxFrameworkPlugin'
wp option delete 'auto_update_redux_google_fonts'
wp option delete 'r_notice_data'
wp option delete 'redux-framework-statistics'
wp option delete 'redux_statistics_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-transients'"
wp option delete 'woocommerce_shop_page_id'

# Delete Transients
wp transient delete 'ocdi_importer_data'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transient' OR option_name LIKE '_site_transient_%-transient'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-transients-metaboxes' OR option_name LIKE '_site_transient_%-transients-metaboxes'"

# Clear Cron Jobs
wp cron event delete 'redux_statistics'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ignore_hints'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'redux_tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'redux_tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'redux_tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'redux_tour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
