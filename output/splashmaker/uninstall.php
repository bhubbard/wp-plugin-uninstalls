<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disclaimer');
delete_site_option('disclaimer');
delete_option('button_color');
delete_site_option('button_color');
delete_option('splash_save_to_local');
delete_site_option('splash_save_to_local');
delete_option('activatation_status');
delete_site_option('activatation_status');
delete_option('splash_script_settings');
delete_site_option('splash_script_settings');
delete_option('splash_hubspot_settings');
delete_site_option('splash_hubspot_settings');
delete_option('splash_hubspot_feed');
delete_site_option('splash_hubspot_feed');
delete_option('splash_setting_fxn');
delete_site_option('splash_setting_fxn');
delete_option('jal_db_version');
delete_site_option('jal_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_flush' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpfm-settings');
delete_site_option('wpfm-settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gate_form_textarea' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gate_form_textarea' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gate_form_textarea' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gate_form_textarea' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gate_form_input' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gate_form_input' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gate_form_input' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gate_form_input' ) );

