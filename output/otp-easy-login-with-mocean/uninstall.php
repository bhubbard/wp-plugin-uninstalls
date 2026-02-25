<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oelm-services-options');
delete_site_option('oelm-services-options');
delete_option('oelm-phone-options');
delete_site_option('oelm-phone-options');
delete_option('mo-el-general-options');
delete_site_option('mo-el-general-options');
delete_option('oelm_otp_users');
delete_site_option('oelm_otp_users');
delete_option('oelm_last_cleanup');
delete_site_option('oelm_last_cleanup');
delete_option('oelm-installed-date');
delete_site_option('oelm-installed-date');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'oelm_phone_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'oelm_phone_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'oelm_phone_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'oelm_phone_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'oelm_phone_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'oelm_phone_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'oelm_phone_no' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'oelm_phone_no' ) );

