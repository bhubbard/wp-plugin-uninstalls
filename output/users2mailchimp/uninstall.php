<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('u2mc-api_key');
delete_site_option('u2mc-api_key');
delete_option('u2mc-list');
delete_site_option('u2mc-list');
delete_option('u2mc-group');
delete_site_option('u2mc-group');
delete_option('u2mc-subgroup');
delete_site_option('u2mc-subgroup');
delete_option('u2mc-use_roles');
delete_site_option('u2mc-use_roles');
delete_option('u2mc-needconfirm');
delete_site_option('u2mc-needconfirm');
delete_option('u2mc-accept');
delete_site_option('u2mc-accept');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'u2mc_mailchimp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'u2mc_mailchimp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'u2mc_mailchimp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'u2mc_mailchimp' ) );

