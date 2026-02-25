<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('thz:builder:tpl:last:update');
delete_site_option('thz:builder:tpl:last:update');
delete_option('thz_fontsquirrel_fonts');
delete_site_option('thz_fontsquirrel_fonts');
delete_option('thz_fontsquirrel_classifications');
delete_site_option('thz_fontsquirrel_classifications');
delete_option('thz_imported_fonts');
delete_site_option('thz_imported_fonts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'thz_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'thz_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'thz_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'thz_image_id' ) );

