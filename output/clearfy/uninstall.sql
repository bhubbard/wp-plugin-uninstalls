-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'WClearfyCacheExclude', 'WClearfyCacheCDN', 'falke_mdm_mappings', 'views_options', 'WClearfyCachePreLoad', 'factory_plugin_versions', 'sga_analytics_id', 'sga_code_location', 'sga_demographic_and_interest', 'sga_render_when_loggedin', 'wmac_cachesize_notice', 'auto_updater.lock', 'wp_rocket_settings', 'wbcr_hlp_hide_wp_admin', 'wbcr_hlp_hide_login_path', 'wbcr_hlp_login_path', 'wbcr_hlp_old_login_path', 'wbcr_hlp_login_recovery_code', 'wbcr_clearfy_complete_uninstall', 'wbcr_factory_google_fonts', 'wbcr_factory_google_fonts_raw', 'wmac_stats', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%assets_manager_options';
DELETE FROM wp_options WHERE option_name LIKE '%for_admin_only';
DELETE FROM wp_options WHERE option_name LIKE '%assets_states';
DELETE FROM wp_options WHERE option_name LIKE '%deactive_preinstall_components';
DELETE FROM wp_options WHERE option_name LIKE '%backend_assets_states';
DELETE FROM wp_options WHERE option_name LIKE '%_old_slug';
DELETE FROM wp_options WHERE option_name LIKE '%_is_active';
DELETE FROM wp_options WHERE option_name LIKE '%autosave_interval';
DELETE FROM wp_options WHERE option_name LIKE '%_quick_modes';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_admin_notices';
DELETE FROM wp_options WHERE option_name LIKE '%hide_my_wp_activate';
DELETE FROM wp_options WHERE option_name LIKE '%fetch_google_page_speed_audits';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('clearfy_farewell_dismissed', 'wbcr_wp_old_slug', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('clearfy_farewell_dismissed', 'wbcr_wp_old_slug', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('clearfy_farewell_dismissed', 'wbcr_wp_old_slug', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('clearfy_farewell_dismissed', 'wbcr_wp_old_slug', 'dismissed_wp_pointers');

