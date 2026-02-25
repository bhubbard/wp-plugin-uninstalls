<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('envothemes_active_time');
delete_site_option('envothemes_active_time');
delete_option('envothemes_active_pro_time');
delete_site_option('envothemes_active_pro_time');
delete_option('envothemes_activation_redirect');
delete_site_option('envothemes_activation_redirect');
delete_option('envothemes_maybe_later');
delete_site_option('envothemes_maybe_later');
delete_option('envothemes_review_dismiss');
delete_site_option('envothemes_review_dismiss');
delete_option('envothemes_active_enwoo_time');
delete_site_option('envothemes_active_enwoo_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('_wc_needs_pages');
delete_site_option('_wc_needs_pages');
delete_option('woocommerce_single_image_width');
delete_site_option('woocommerce_single_image_width');
delete_option('woocommerce_thumbnail_image_width');
delete_site_option('woocommerce_thumbnail_image_width');
delete_option('woocommerce_thumbnail_cropping');
delete_site_option('woocommerce_thumbnail_cropping');
delete_option('woocommerce_thumbnail_cropping_custom_width');
delete_site_option('woocommerce_thumbnail_cropping_custom_width');
delete_option('woocommerce_thumbnail_cropping_custom_height');
delete_site_option('woocommerce_thumbnail_cropping_custom_height');
delete_option('elementor_container_width');
delete_site_option('elementor_container_width');
delete_option('envo_wizard');
delete_site_option('envo_wizard');
delete_option('automatic_2nd_notice');
delete_site_option('automatic_2nd_notice');
delete_option('2nd_notice');
delete_site_option('2nd_notice');

// Delete Transients
delete_transient('_wc_activation_redirect');
delete_site_transient('_wc_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('add_second_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_menu_item_menu_item_parent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

