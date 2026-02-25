<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pbm_2fa_management_certificate');
delete_site_option('pbm_2fa_management_certificate');
delete_option('pbm_2fa_application_certificate');
delete_site_option('pbm_2fa_application_certificate');
delete_option('pbm_2fa_message_title');
delete_site_option('pbm_2fa_message_title');
delete_option('pbm_2fa_message');
delete_site_option('pbm_2fa_message');
delete_option('pbm_2fa_timeout');
delete_site_option('pbm_2fa_timeout');
delete_option('pbm_2fa_mng_url');
delete_site_option('pbm_2fa_mng_url');
delete_option('pbm_2fa_auth_url');
delete_site_option('pbm_2fa_auth_url');
delete_option('pbm_2fa_proxy_url');
delete_site_option('pbm_2fa_proxy_url');
delete_option('pbm_2fa_proxy_port');
delete_site_option('pbm_2fa_proxy_port');
delete_option('pbm_2fa_proxy_pwd');
delete_site_option('pbm_2fa_proxy_pwd');
delete_option('pbm_2fa_application_pwd');
delete_site_option('pbm_2fa_application_pwd');
delete_option('pbm_2fa_management_pwd');
delete_site_option('pbm_2fa_management_pwd');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pbm_2fa_authentication' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pbm_2fa_authentication' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pbm_2fa_authentication' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pbm_2fa_authentication' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pbm_2fa_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pbm_2fa_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pbm_2fa_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pbm_2fa_user_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pbm_2fa_user_oid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pbm_2fa_user_oid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pbm_2fa_user_oid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pbm_2fa_user_oid' ) );

