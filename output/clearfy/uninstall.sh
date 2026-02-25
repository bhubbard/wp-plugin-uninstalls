#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%assets_manager_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%for_admin_only'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%assets_states'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%deactive_preinstall_components'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%backend_assets_states'"
wp option delete 'WClearfyCacheExclude'
wp option delete 'WClearfyCacheCDN'
wp option delete 'falke_mdm_mappings'
wp option delete 'views_options'
wp option delete 'WClearfyCachePreLoad'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_old_slug'"
wp option delete 'factory_plugin_versions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_active'"
wp option delete 'sga_analytics_id'
wp option delete 'sga_code_location'
wp option delete 'sga_demographic_and_interest'
wp option delete 'sga_render_when_loggedin'
wp option delete 'wmac_cachesize_notice'
wp option delete 'auto_updater.lock'
wp option delete 'wp_rocket_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%autosave_interval'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_quick_modes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable_admin_notices'"
wp option delete 'wbcr_hlp_hide_wp_admin'
wp option delete 'wbcr_hlp_hide_login_path'
wp option delete 'wbcr_hlp_login_path'
wp option delete 'wbcr_hlp_old_login_path'
wp option delete 'wbcr_hlp_login_recovery_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%hide_my_wp_activate'"
wp option delete 'wbcr_clearfy_complete_uninstall'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%fetch_google_page_speed_audits' OR option_name LIKE '_site_transient_%fetch_google_page_speed_audits'"
wp transient delete 'wbcr_factory_google_fonts'
wp transient delete 'wbcr_factory_google_fonts_raw'
wp transient delete 'wmac_stats'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'wclearfy/google_page_speed_audit'
wp cron event delete 'wbcr_clearfy_update_local_ga'
wp cron event delete 'wp_fastest_cache_Preload'
wp cron event delete 'wbcr/gac/update_analytic_library'
wp cron event delete 'wclearfy/google_tracking_cache_update'
wp cron event delete 'wp_update_plugins'
wp cron event delete 'wp_version_check'
wp cron event delete 'wp_update_themes'
wp cron event delete 'wp_maybe_auto_update'
wp cron event delete 'wbcr_clr_license_autosync'
wp cron event delete 'wbcr_clearfy_license_autosync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'clearfy_farewell_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'clearfy_farewell_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'clearfy_farewell_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'clearfy_farewell_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
