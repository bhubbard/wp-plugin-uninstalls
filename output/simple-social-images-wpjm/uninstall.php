<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssi_wpjm_license_key');
delete_site_option('ssi_wpjm_license_key');
delete_option('ssi_wpjm_template');
delete_site_option('ssi_wpjm_template');
delete_option('ssi_wpjm_text_color');
delete_site_option('ssi_wpjm_text_color');
delete_option('ssi_wpjm_text_bg_color');
delete_site_option('ssi_wpjm_text_bg_color');
delete_option('ssi_wpjm_bg_color');
delete_site_option('ssi_wpjm_bg_color');
delete_option('ssi_wpjm_logo');
delete_site_option('ssi_wpjm_logo');
delete_option('ssi_wpjm_logo_size');
delete_site_option('ssi_wpjm_logo_size');
delete_option('ssi_wpjm_background_images');
delete_site_option('ssi_wpjm_background_images');
delete_option('ssi_wpjm_title_size');
delete_site_option('ssi_wpjm_title_size');
delete_option('ssi_wpjm_location_size');
delete_site_option('ssi_wpjm_location_size');
delete_option('ssi_wpjm_salary_size');
delete_site_option('ssi_wpjm_salary_size');
delete_option('ssi_wpjm_title_placeholder_text');
delete_site_option('ssi_wpjm_title_placeholder_text');
delete_option('ssi_wpjm_location_placeholder_text');
delete_site_option('ssi_wpjm_location_placeholder_text');
delete_option('ssi_wpjm_salary_placeholder_text');
delete_site_option('ssi_wpjm_salary_placeholder_text');
delete_option('ssi_wpjm_google_font_url');
delete_site_option('ssi_wpjm_google_font_url');
delete_option('ssi_wpjm_google_font_family');
delete_site_option('ssi_wpjm_google_font_family');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ssi_wpjm_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ssi_wpjm_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ssi_wpjm_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ssi_wpjm_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ssi_wpjm_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ssi_wpjm_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ssi_wpjm_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ssi_wpjm_image_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_facebook_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_twitter_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_twitter-image' ) );

