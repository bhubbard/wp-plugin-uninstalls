<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lifepress_dashboard');
delete_site_option('lifepress_dashboard');
delete_option('lifepress_create_pages');
delete_site_option('lifepress_create_pages');
delete_option('lp_type_meta');
delete_site_option('lp_type_meta');
delete_option('lifepress_metrics');
delete_site_option('lifepress_metrics');
delete_option('lp_settings');
delete_site_option('lp_settings');
delete_option('life_create_pages');
delete_site_option('life_create_pages');

// Delete Transients
delete_transient('_lp_activation_redirect');
delete_site_transient('_lp_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_lifepress_ls_sd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_lifepress_ls_sd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_lifepress_ls_sd' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_lifepress_ls_sd' ) );

