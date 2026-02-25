<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprhinosupport_key');
delete_site_option('wprhinosupport_key');
delete_option('rhino_license_status');
delete_site_option('rhino_license_status');
delete_option('rhino_last_license_check');
delete_site_option('rhino_last_license_check');
delete_option('wprhinosupport_non_logged_departments');
delete_site_option('wprhinosupport_non_logged_departments');
delete_option('wprhinosupport_logged_departments');
delete_site_option('wprhinosupport_logged_departments');
delete_option('wprhinosupport_wlm_members_departments');
delete_site_option('wprhinosupport_wlm_members_departments');
delete_option('wprhinosupport_create_thankyou');
delete_site_option('wprhinosupport_create_thankyou');
delete_option('wprhinosupport_create_thankyou_value1');
delete_site_option('wprhinosupport_create_thankyou_value1');
delete_option('wprhinosupport_external_internal');
delete_site_option('wprhinosupport_external_internal');
delete_option('wprhinosupport_create_thankyou_value2');
delete_site_option('wprhinosupport_create_thankyou_value2');
delete_option('wprhinosupport_scroller_color');
delete_site_option('wprhinosupport_scroller_color');
delete_option('wprhinosupport_scroller_pixel');
delete_site_option('wprhinosupport_scroller_pixel');
delete_option('wprhinosupport_scroller_online');
delete_site_option('wprhinosupport_scroller_online');
delete_option('wprhinosupport_scroller_offline');
delete_site_option('wprhinosupport_scroller_offline');
delete_option('wprhinosupport_scroller_tab');
delete_site_option('wprhinosupport_scroller_tab');
delete_option('wprhinosupport_supporttab_ids');
delete_site_option('wprhinosupport_supporttab_ids');
delete_option('wprhinosupport_remote_auth');
delete_site_option('wprhinosupport_remote_auth');
delete_option('wprhinosupport_version');
delete_site_option('wprhinosupport_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rhino-ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rhino-ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rhino-ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rhino-ticket' ) );

