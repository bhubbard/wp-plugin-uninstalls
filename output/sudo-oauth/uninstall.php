<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sudooauth_option_name');
delete_site_option('sudooauth_option_name');
delete_option('sudooauth_option_pwd');
delete_site_option('sudooauth_option_pwd');
delete_option('sudooauth_option_host');
delete_site_option('sudooauth_option_host');
delete_option('sudooauth_option_cat');
delete_site_option('sudooauth_option_cat');
delete_option('sudooauth_option_multicat');
delete_site_option('sudooauth_option_multicat');
delete_option('sudooauth_option_limitpost');
delete_site_option('sudooauth_option_limitpost');
delete_option('sudooauth_option_uploadfiles');
delete_site_option('sudooauth_option_uploadfiles');
delete_option('sudooauth_option_activeplugin');
delete_site_option('sudooauth_option_activeplugin');
delete_option('sudooauth_option_link_number');
delete_site_option('sudooauth_option_link_number');
delete_option('sudooauth_option_nofolow_number');
delete_site_option('sudooauth_option_nofolow_number');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sudo_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sudo_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sudo_access' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sudo_access' ) );

