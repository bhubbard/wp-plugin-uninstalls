<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_newsletter_post_label');
delete_site_option('wp_newsletter_post_label');
delete_option('wp_newsletter_header');
delete_site_option('wp_newsletter_header');
delete_option('wp_newsletter_logo');
delete_site_option('wp_newsletter_logo');
delete_option('wp_newsletter_html_bg_color');
delete_site_option('wp_newsletter_html_bg_color');
delete_option('wp_newsletter_bg_color');
delete_site_option('wp_newsletter_bg_color');
delete_option('wp_newsletter_body_width');
delete_site_option('wp_newsletter_body_width');
delete_option('wp_newsletter_body_padding');
delete_site_option('wp_newsletter_body_padding');
delete_option('wp_newsletter_body_border_color');
delete_site_option('wp_newsletter_body_border_color');
delete_option('wp_newsletter_font_family');
delete_site_option('wp_newsletter_font_family');
delete_option('wp_newsletter_font_color');
delete_site_option('wp_newsletter_font_color');
delete_option('wp_newsletter_text_size');
delete_site_option('wp_newsletter_text_size');
delete_option('wp_newsletter_link_color');
delete_site_option('wp_newsletter_link_color');
delete_option('wp_newsletter_link_hover_color');
delete_site_option('wp_newsletter_link_hover_color');
delete_option('wp_newsletter_heading_color');
delete_site_option('wp_newsletter_heading_color');
delete_option('wp_newsletter_button_bg_color');
delete_site_option('wp_newsletter_button_bg_color');
delete_option('wp_newsletter_button_text_color');
delete_site_option('wp_newsletter_button_text_color');
delete_option('wp_newsletter_date_format');
delete_site_option('wp_newsletter_date_format');
delete_option('wp_newsletter_google_parameters');
delete_site_option('wp_newsletter_google_parameters');
delete_option('wp_newsletter_google_analytics');
delete_site_option('wp_newsletter_google_analytics');
delete_option('wp_newsletter_outlook');
delete_site_option('wp_newsletter_outlook');
delete_option('wp_newsletter_footer');
delete_site_option('wp_newsletter_footer');
delete_option('wp_newsletter_socialize');
delete_site_option('wp_newsletter_socialize');
delete_option('wp_newsletter_post_slug');
delete_site_option('wp_newsletter_post_slug');
delete_option('wp_newsletter_with_front');
delete_site_option('wp_newsletter_with_front');
delete_option('wp_newsletter_archive_slug');
delete_site_option('wp_newsletter_archive_slug');
delete_option('wp_newsletter_single_override');
delete_site_option('wp_newsletter_single_override');
delete_option('wp_newsletter_fb_app_id');
delete_site_option('wp_newsletter_fb_app_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_newsletter_sub_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_newsletter_sub_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_newsletter_sub_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_newsletter_sub_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_newsletter_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_newsletter_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_newsletter_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_newsletter_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_newsletter_preview_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_newsletter_preview_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_newsletter_preview_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_newsletter_preview_text' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_newsletter_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_newsletter_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_newsletter_image_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_newsletter_image_url' ) );

