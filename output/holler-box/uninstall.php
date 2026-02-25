<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hollerbox_settings');
delete_site_option('hollerbox_settings');
delete_option('hwp_ac_api_key');
delete_site_option('hwp_ac_api_key');
delete_option('hwp_ac_url');
delete_site_option('hwp_ac_url');
delete_option('hwp_ck_api_key');
delete_site_option('hwp_ck_api_key');
delete_option('hwp_mc_api_key');
delete_site_option('hwp_mc_api_key');
delete_option('hwp_email_title');
delete_site_option('hwp_email_title');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_table_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hwp_pro_edd_license');
delete_site_option('hwp_pro_edd_license');
delete_option('hwp_pro_edd_license_status');
delete_site_option('hwp_pro_edd_license_status');
delete_option('hwp_powered_by');
delete_site_option('hwp_powered_by');
delete_option('holler_previous_updates');
delete_site_option('holler_previous_updates');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('hollerbox/telemetry');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hollerbox_closed_popups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hollerbox_closed_popups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hollerbox_closed_popups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hollerbox_closed_popups' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'hollerbox_popup_conversions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'hollerbox_popup_conversions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'hollerbox_popup_conversions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'hollerbox_popup_conversions' ) );

