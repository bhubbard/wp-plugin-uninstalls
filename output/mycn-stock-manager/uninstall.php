<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msm_hiddenstatus_option_mycn');
delete_site_option('msm_hiddenstatus_option_mycn');
delete_option('msm_enabled_option_mycn');
delete_site_option('msm_enabled_option_mycn');
delete_option('msm_username_option_mycn');
delete_site_option('msm_username_option_mycn');
delete_option('msm_password_option_mycn');
delete_site_option('msm_password_option_mycn');
delete_option('msm_myplugin_section2_settings');
delete_site_option('msm_myplugin_section2_settings');
delete_option('msm_china_option_mycn');
delete_site_option('msm_china_option_mycn');
delete_option('msm_saudi_option_mycn');
delete_site_option('msm_saudi_option_mycn');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'room' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'room' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'room' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'room' ) );

