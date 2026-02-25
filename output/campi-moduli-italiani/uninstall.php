<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gcmi_last_update_check');
delete_site_option('gcmi_last_update_check');
delete_option('gcmi_codici_catastali_remote_file_time');
delete_site_option('gcmi_codici_catastali_remote_file_time');
delete_option('gcmi-formsign-css');
delete_site_option('gcmi-formsign-css');
delete_option('gcmi_plugin_version');
delete_site_option('gcmi_plugin_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('gcmi_check_for_remote_data_updates');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_privKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_privKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_privKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_privKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_pubKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_pubKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_pubKey' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gcmi_wpcf7_enc_pubKey' ) );

