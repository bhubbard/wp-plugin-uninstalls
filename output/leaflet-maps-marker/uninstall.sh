#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leafletmapsmarker_options'
wp option delete 'leafletmapsmarker_version_pro'
wp option delete 'leafletmapsmarkerpro_license_key_trial'
wp option delete 'leafletmapsmarker_version'
wp option delete 'leafletmapsmarker_update_info'
wp option delete 'leafletmapsmarker_version_before_update'
wp option delete 'jquery-colorbox_settings'
wp option delete 'cforms_settings'
wp option delete 'bwp_minify_general'
wp option delete 'wp_minify'
wp option delete 'wpseo_social'
wp option delete 'aj_enabled'
wp option delete 'aj_exclusions'
wp option delete 'fastvelocity_min_disable_js_merge'
wp option delete 'fastvelocity_min_ignore'
wp option delete 'leafletmapsmarker_redirect'
wp option delete 'leafletmapsmarker_editor'
wp option delete 'active_sitewide_plugins'
wp option delete 'dashboard_widget_options'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'leafletmapsmarker_version_before_update'
wp transient delete 'leafletmapsmarker_install_update_cache_v399'
wp transient delete 'leafletmapsmarker_install_update_cache_v3122'
wp transient delete 'leafletmapsmarker_tinymce_custom_css'

# Clear Cron Jobs
wp cron event delete 'lmm_wp_session_garbage_collection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lmm_retirement_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lmm_retirement_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lmm_retirement_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lmm_retirement_notice_dismissed'"
