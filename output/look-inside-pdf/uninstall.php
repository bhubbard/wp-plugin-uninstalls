<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_lipdf_type_of_data_show_on_product_thumb');
delete_site_option('_lipdf_type_of_data_show_on_product_thumb');
delete_option('_lipdf_read_more_image_link');
delete_site_option('_lipdf_read_more_image_link');
delete_option('_lipdf_read_more_button_text');
delete_site_option('_lipdf_read_more_button_text');
delete_option('_lipdf_show_read_more_button_after_product_thumb');
delete_site_option('_lipdf_show_read_more_button_after_product_thumb');
delete_option('_lipdf_show_read_more_button_after_add_to_cart_button');
delete_site_option('_lipdf_show_read_more_button_after_add_to_cart_button');
delete_option('look_inside_pdf_installed');
delete_site_option('look_inside_pdf_installed');
delete_option('look_inside_pdf_version');
delete_site_option('look_inside_pdf_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_li_pdf_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_li_pdf_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_li_pdf_images' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_li_pdf_images' ) );

