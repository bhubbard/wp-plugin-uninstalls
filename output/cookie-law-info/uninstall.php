<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cky_cookie_consent_lite_db_version');
delete_site_option('cky_cookie_consent_lite_db_version');
delete_option('wt_cli_first_time_activated_plugin');
delete_site_option('wt_cli_first_time_activated_plugin');
delete_option('cookielawinfo_privacy_overview_content_settings');
delete_site_option('cookielawinfo_privacy_overview_content_settings');
delete_option('cli_pg_content_data');
delete_site_option('cli_pg_content_data');
delete_option('CLI_BYPASS');
delete_site_option('CLI_BYPASS');
delete_option('finished_splitting_shared_terms');
delete_site_option('finished_splitting_shared_terms');
delete_option('cookielawinfo_thirdparty_settings');
delete_site_option('cookielawinfo_thirdparty_settings');
delete_option('cookielawinfo_necessary_settings');
delete_site_option('cookielawinfo_necessary_settings');
delete_option('wt_cli_cookie_db_version');
delete_site_option('wt_cli_cookie_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_activation_status' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wt_cli_db_version');
delete_site_option('wt_cli_db_version');
delete_option('wt_cli_version');
delete_site_option('wt_cli_version');
delete_option('wt_cli_cookieyes_options');
delete_site_option('wt_cli_cookieyes_options');
delete_option('wt_cli_ckyes_branding');
delete_site_option('wt_cli_ckyes_branding');
delete_option('wt_cli_ckyes_scan_options');
delete_site_option('wt_cli_ckyes_scan_options');
delete_option('cli_heading_version');
delete_site_option('cli_heading_version');
delete_option('cookielawinfo_js_blocking');
delete_site_option('cookielawinfo_js_blocking');
delete_option('cky_plugin_migrate_status');
delete_site_option('cky_plugin_migrate_status');
delete_option('cli_script_blocker_status');
delete_site_option('cli_script_blocker_status');
delete_option('cky_first_time_activated_plugin');
delete_site_option('cky_first_time_activated_plugin');
delete_option('cky_banner_template');
delete_site_option('cky_banner_template');
delete_option('cky_webapp_connected');
delete_site_option('cky_webapp_connected');
delete_option('cky_gcm_settings');
delete_site_option('cky_gcm_settings');
delete_option('cky_scan_details');
delete_site_option('cky_scan_details');
delete_option('cky_settings');
delete_site_option('cky_settings');
delete_option('cky_migration_options');
delete_site_option('cky_migration_options');
delete_option('cky_banners_table_version');
delete_site_option('cky_banners_table_version');
delete_option('cky_cookie_table_version');
delete_site_option('cky_cookie_table_version');
delete_option('cky_cookie_category_table_version');
delete_site_option('cky_cookie_category_table_version');
delete_option('cky_missing_tables');
delete_site_option('cky_missing_tables');
delete_option('cky_connect_expand');
delete_site_option('cky_connect_expand');
delete_option('cky_connect_notice');
delete_site_option('cky_connect_notice');
delete_option('cky_file_write_access');
delete_site_option('cky_file_write_access');
delete_option('cky_admin_notices');
delete_site_option('cky_admin_notices');

// Delete Transients
delete_transient('_wt_cli_first_time_activation');
delete_site_transient('_wt_cli_first_time_activation');
delete_transient('wt_cli_script_blocker_notice');
delete_site_transient('wt_cli_script_blocker_notice');
delete_transient('_cky_first_time_install');
delete_site_transient('_cky_first_time_install');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_transient_prefix', '_site_transient_%_transient_prefix' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cli_cookie_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cli_cookie_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cli_cookie_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cli_cookie_duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cli_cookie_sensitivity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cli_cookie_sensitivity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cli_cookie_sensitivity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cli_cookie_sensitivity' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cli_cookie_slugid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cli_cookie_slugid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cli_cookie_slugid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cli_cookie_slugid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cli_cookie_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cli_cookie_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cli_cookie_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cli_cookie_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'CLIpriority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'CLIpriority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'CLIpriority' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'CLIpriority' ) );

