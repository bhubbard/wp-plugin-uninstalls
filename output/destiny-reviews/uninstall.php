<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dr_admin_email');
delete_site_option('dr_admin_email');
delete_option('dr_use_dr_styles');
delete_site_option('dr_use_dr_styles');
delete_option('dr_custom_thank_you_page');
delete_site_option('dr_custom_thank_you_page');
delete_option('dr_custom_name_label');
delete_site_option('dr_custom_name_label');
delete_option('dr_custom_name_placeholder');
delete_site_option('dr_custom_name_placeholder');
delete_option('dr_custom_testimonial_label');
delete_site_option('dr_custom_testimonial_label');
delete_option('dr_custom_testimonial_placeholder');
delete_site_option('dr_custom_testimonial_placeholder');
delete_option('dr_theme');
delete_site_option('dr_theme');
delete_option('dr_custom_bg');
delete_site_option('dr_custom_bg');
delete_option('dr_custom_txt_clr');
delete_site_option('dr_custom_txt_clr');
delete_option('dr_border_radius');
delete_site_option('dr_border_radius');
delete_option('dr_border_radius_type');
delete_site_option('dr_border_radius_type');
delete_option('dr_button_colour');
delete_site_option('dr_button_colour');
delete_option('destiny_reviews_client_name');
delete_site_option('destiny_reviews_client_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'destiny_reviews_client_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'destiny_reviews_client_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'destiny_reviews_client_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'destiny_reviews_client_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_destiny_reviews_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_destiny_reviews_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_destiny_reviews_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_destiny_reviews_comment' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_destiny_reviews_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_destiny_reviews_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_destiny_reviews_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_destiny_reviews_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_destiny_reviews_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_destiny_reviews_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_destiny_reviews_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_destiny_reviews_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

