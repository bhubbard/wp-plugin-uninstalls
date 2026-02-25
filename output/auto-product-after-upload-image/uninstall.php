<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apaui_enable');
delete_site_option('apaui_enable');
delete_option('apaui_mode');
delete_site_option('apaui_mode');
delete_option('apaui_is_virtual');
delete_site_option('apaui_is_virtual');
delete_option('apaui_is_downloadable');
delete_site_option('apaui_is_downloadable');
delete_option('apaui_tax');
delete_site_option('apaui_tax');
delete_option('apaui_updatepost');
delete_site_option('apaui_updatepost');

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'order' ) );

