#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'masterslider_lite_plugin_version'
wp option delete '_depicter_intro_modal_skip_time'
wp option delete 'masterslider_is_license_actived'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_license_actived'"
wp option delete 'master-slider_ab_pro_feature_setting_content_type'
wp option delete 'masterslider_db_version'
wp option delete 'master-slider_ab_pro_feature_panel_content_type'
wp option delete 'masterslider_capabilities_added'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
