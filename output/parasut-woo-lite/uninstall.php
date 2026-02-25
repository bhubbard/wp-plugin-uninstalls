<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('parasut_api_settings');
delete_site_option('parasut_api_settings');
delete_option('parasut_araclar_ayarlar');
delete_site_option('parasut_araclar_ayarlar');
delete_option('parasut_license_key');
delete_site_option('parasut_license_key');
delete_option('parasut_ana_ayarlar');
delete_site_option('parasut_ana_ayarlar');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'parasut_urun_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'parasut_urun_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'parasut_urun_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'parasut_urun_id' ) );

