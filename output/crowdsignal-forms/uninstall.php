<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crowdsignal_api_key_secret');
delete_site_option('crowdsignal_api_key_secret');
delete_option('polldaddy_api_key');
delete_site_option('polldaddy_api_key');
delete_option('crowdsignal_forms_do_activation_redirect');
delete_site_option('crowdsignal_forms_do_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_crowdsignal_forms_poll_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_crowdsignal_forms_poll_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_crowdsignal_forms_poll_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_crowdsignal_forms_poll_ids' ) );

