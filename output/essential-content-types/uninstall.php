<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ect_portfolio');
delete_site_option('ect_portfolio');
delete_option('ect_testimonial');
delete_site_option('ect_testimonial');
delete_option('ect_featured_content');
delete_site_option('ect_featured_content');
delete_option('ect_service');
delete_site_option('ect_service');
delete_option('ect_food_menu');
delete_site_option('ect_food_menu');
delete_option('featured_content_content');
delete_site_option('featured_content_content');
delete_option('ect_food_menu_order');
delete_site_option('ect_food_menu_order');
delete_option('jetpack_portfolio_content');
delete_site_option('jetpack_portfolio_content');
delete_option('ect_service_content');
delete_site_option('ect_service_content');
delete_option('jetpack_testimonial_content');
delete_site_option('jetpack_testimonial_content');
delete_option('ctp_options');
delete_site_option('ctp_options');

// Delete Transients
delete_transient('featured-content-count-cache');
delete_site_transient('featured-content-count-cache');
delete_transient('jetpack-portfolio-count-cache');
delete_site_transient('jetpack-portfolio-count-cache');
delete_transient('service-count-cache');
delete_site_transient('service-count-cache');
delete_transient('jetpack-testimonial-count-cache');
delete_site_transient('jetpack-testimonial-count-cache');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ect_food_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ect_food_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ect_food_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ect_food_price' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ect_testimonial_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ect_testimonial_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ect_testimonial_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ect_testimonial_position' ) );

