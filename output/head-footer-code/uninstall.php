<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auhfc_db_ver');
delete_site_option('auhfc_db_ver');
delete_option('auhfc_settings_sitewide');
delete_site_option('auhfc_settings_sitewide');
delete_option('auhfc_settings_homepage');
delete_site_option('auhfc_settings_homepage');
delete_option('auhfc_settings_article');
delete_site_option('auhfc_settings_article');
delete_option('auhfc_settings');
delete_site_option('auhfc_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_auhfc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_auhfc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_auhfc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_auhfc' ) );

