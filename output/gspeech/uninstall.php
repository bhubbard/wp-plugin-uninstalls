<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgs_settings');
delete_site_option('wpgs_settings');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'gspeech_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('gspeech_version_index');
delete_site_option('gspeech_version_index');
delete_option('gspeech_crypto');
delete_site_option('gspeech_crypto');
delete_option('gspeech_reload_session');
delete_site_option('gspeech_reload_session');
delete_option('gspeech_sh_w_loaded');
delete_site_option('gspeech_sh_w_loaded');
delete_option('gspeech_sh_');
delete_site_option('gspeech_sh_');
delete_option('gspeech_plan');
delete_site_option('gspeech_plan');
delete_option('gspeech_appsumo');
delete_site_option('gspeech_appsumo');
delete_option('GTranslate');
delete_site_option('GTranslate');
delete_option('GSpeech');
delete_site_option('GSpeech');
delete_option('gspeech_db_version');
delete_site_option('gspeech_db_version');
delete_option('gspeech_admin_notice');
delete_site_option('gspeech_admin_notice');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_admin_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('gspeech_settings_cache');
delete_site_transient('gspeech_settings_cache');
delete_transient('gsp_crypto_cache');
delete_site_transient('gsp_crypto_cache');

