<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('siteorigin_installer_admin_dismissed');
delete_site_option('siteorigin_installer_admin_dismissed');
delete_option('siteorigin_premium_affiliate_id');
delete_site_option('siteorigin_premium_affiliate_id');
delete_option('siteorigin_installer');
delete_site_option('siteorigin_installer');
delete_option('siteorigin_custom_file');
delete_site_option('siteorigin_custom_file');
delete_option('so_css_output_location');
delete_site_option('so_css_output_location');
delete_option('so_css_editor_theme');
delete_site_option('so_css_editor_theme');
delete_option('so_css_version');
delete_site_option('so_css_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%]' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('siteorigin_installer_product_data');
delete_site_transient('siteorigin_installer_product_data');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'socss_hide_gs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'socss_hide_gs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'socss_hide_gs' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'socss_hide_gs' ) );

