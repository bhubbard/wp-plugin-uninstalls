#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gutenverse-companion-base-theme'
wp option delete 'gutenverse_active_time'
wp option delete 'gutenverse_theme_select_complete'
wp option delete 'active_sitewide_plugins'
wp option delete 'gutenverse-settings'
wp option delete 'gutenverse-global-variable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-font-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gutenverse-global-variable-color-%'"
wp option delete 'polylang'
wp option delete 'gutenverse-style-cache-id'
wp option delete 'gvnews_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lite_plus_wizard_setup_done'"
wp option delete 'gutenverse_compatibility_notice_flag'
wp option delete 'gutenverse-global-setting'
wp option delete 'widget_block'
wp option delete 'gutenverse_plugin_permalinks_flushed'
wp option delete 'gutenverse-liked-layout'
wp option delete 'gutenverse-liked-section'
wp option delete 'gutenverse-subscribed'
wp option delete 'gutenverse-subscribed-email'
wp option delete 'gutenverse_compatibility_notice_close'

# Delete Transients
wp transient delete 'gutenverse_redirect'
wp transient delete 'gutenverse_wizard_redirect'
wp transient delete 'gutenverse_banner_cache'
wp transient delete 'gutenverse_wp_remote_get_status_cache'

# Clear Cron Jobs
wp cron event delete 'gutenverse_cleanup_cached_style'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenverse_page_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenverse_page_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenverse_page_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenverse_page_custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenverse_page_custom_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenverse_page_custom_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenverse_page_custom_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenverse_page_custom_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutense_templates_viewed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutense_templates_viewed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutense_templates_viewed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutense_templates_viewed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_import_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gutenverse_install_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gutenverse_install_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gutenverse_install_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gutenverse_install_notice'"
