<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acovsw_common_settings');
delete_site_option('acovsw_common_settings');
delete_option('acovsw_label_settings');
delete_site_option('acovsw_label_settings');
delete_option('acovsw_radio_settings');
delete_site_option('acovsw_radio_settings');
delete_option('acovsw_color_settings');
delete_site_option('acovsw_color_settings');
delete_option('acovsw_image_settings');
delete_site_option('acovsw_image_settings');
delete_option('acovsw_tooltip_settings');
delete_site_option('acovsw_tooltip_settings');
delete_option('acovsw_advanced_settings');
delete_site_option('acovsw_advanced_settings');
delete_option('acovsw_attribute_values');
delete_site_option('acovsw_attribute_values');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'acovsw_custom_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'acovsw_custom_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'acovsw_custom_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'acovsw_custom_settings' ) );

