<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%assets_manager_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%for_admin_only' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%assets_states' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%deactive_preinstall_components' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%backend_assets_states' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('WClearfyCacheExclude');
delete_site_option('WClearfyCacheExclude');
delete_option('WClearfyCacheCDN');
delete_site_option('WClearfyCacheCDN');
delete_option('falke_mdm_mappings');
delete_site_option('falke_mdm_mappings');
delete_option('views_options');
delete_site_option('views_options');
delete_option('WClearfyCachePreLoad');
delete_site_option('WClearfyCachePreLoad');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_old_slug' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('factory_plugin_versions');
delete_site_option('factory_plugin_versions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_is_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sga_analytics_id');
delete_site_option('sga_analytics_id');
delete_option('sga_code_location');
delete_site_option('sga_code_location');
delete_option('sga_demographic_and_interest');
delete_site_option('sga_demographic_and_interest');
delete_option('sga_render_when_loggedin');
delete_site_option('sga_render_when_loggedin');
delete_option('wmac_cachesize_notice');
delete_site_option('wmac_cachesize_notice');
delete_option('auto_updater.lock');
delete_site_option('auto_updater.lock');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%autosave_interval' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_quick_modes' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_disable_admin_notices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wbcr_hlp_hide_wp_admin');
delete_site_option('wbcr_hlp_hide_wp_admin');
delete_option('wbcr_hlp_hide_login_path');
delete_site_option('wbcr_hlp_hide_login_path');
delete_option('wbcr_hlp_login_path');
delete_site_option('wbcr_hlp_login_path');
delete_option('wbcr_hlp_old_login_path');
delete_site_option('wbcr_hlp_old_login_path');
delete_option('wbcr_hlp_login_recovery_code');
delete_site_option('wbcr_hlp_login_recovery_code');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%hide_my_wp_activate' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wbcr_clearfy_complete_uninstall');
delete_site_option('wbcr_clearfy_complete_uninstall');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%fetch_google_page_speed_audits', '_site_transient_%fetch_google_page_speed_audits' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wbcr_factory_google_fonts');
delete_site_transient('wbcr_factory_google_fonts');
delete_transient('wbcr_factory_google_fonts_raw');
delete_site_transient('wbcr_factory_google_fonts_raw');
delete_transient('wmac_stats');
delete_site_transient('wmac_stats');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('wclearfy/google_page_speed_audit');
wp_clear_scheduled_hook('wbcr_clearfy_update_local_ga');
wp_clear_scheduled_hook('wp_fastest_cache_Preload');
wp_clear_scheduled_hook('wbcr/gac/update_analytic_library');
wp_clear_scheduled_hook('wclearfy/google_tracking_cache_update');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_maybe_auto_update');
wp_clear_scheduled_hook('wbcr_clr_license_autosync');
wp_clear_scheduled_hook('wbcr_clearfy_license_autosync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'clearfy_farewell_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'clearfy_farewell_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'clearfy_farewell_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'clearfy_farewell_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wbcr_wp_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wbcr_wp_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wbcr_wp_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wbcr_wp_old_slug' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

