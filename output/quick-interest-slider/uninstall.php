<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qis_messages');
delete_site_option('qis_messages');
delete_option('qis_forex_modified');
delete_site_option('qis_forex_modified');
delete_option('qis_forex_exchange');
delete_site_option('qis_forex_exchange');
delete_option('qpp_key');
delete_site_option('qpp_key');
delete_option('qis_track');
delete_site_option('qis_track');
delete_option('qis_dropdown');
delete_site_option('qis_dropdown');
delete_option('qis_upgrade');
delete_site_option('qis_upgrade');
delete_option('qis_settingsone');
delete_site_option('qis_settingsone');
delete_option('qis_settings1');
delete_site_option('qis_settings1');
delete_option('qis_settingstwo');
delete_site_option('qis_settingstwo');
delete_option('qis_settings2');
delete_site_option('qis_settings2');
delete_option('qis_settingsthree');
delete_site_option('qis_settingsthree');
delete_option('qis_settings3');
delete_site_option('qis_settings3');
delete_option('qis_settingsfour');
delete_site_option('qis_settingsfour');
delete_option('qis_settings4');
delete_site_option('qis_settings4');
delete_option('qis_settingsfive');
delete_site_option('qis_settingsfive');
delete_option('qis_settings5');
delete_site_option('qis_settings5');
delete_option('qis_formnumber');
delete_site_option('qis_formnumber');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qis_settings%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qis_style');
delete_site_option('qis_style');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qis_register%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qis_reference');
delete_site_option('qis_reference');
delete_option('qis_select_form');
delete_site_option('qis_select_form');
delete_option('qis_register_style');
delete_site_option('qis_register_style');
delete_option('qis_progress');
delete_site_option('qis_progress');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qis_autoresponder%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qis_application%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qis_full_application%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('qis_outputtable');
delete_site_option('qis_outputtable');
delete_option('qis_akismet');
delete_site_option('qis_akismet');
delete_option('qis_advanced');
delete_site_option('qis_advanced');
delete_option('qis_track_applications');
delete_site_option('qis_track_applications');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'qis_outputtable%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

