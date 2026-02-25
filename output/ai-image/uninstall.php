<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bdthemes_openai_api_key');
delete_site_option('bdthemes_openai_api_key');
delete_option('bdthemes_unsplash_access_key');
delete_site_option('bdthemes_unsplash_access_key');
delete_option('bdthemes_giphy_api_key');
delete_site_option('bdthemes_giphy_api_key');
delete_option('bdthemes_gemini_api_key');
delete_site_option('bdthemes_gemini_api_key');
delete_option('bdthemes_ai_image_provider_gemini');
delete_site_option('bdthemes_ai_image_provider_gemini');
delete_option('bdthemes_ai_image_provider_openai');
delete_site_option('bdthemes_ai_image_provider_openai');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bdthemes_ai_image_provider_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bdthemes_ai_image_provider_order');
delete_site_option('bdthemes_ai_image_provider_order');
delete_option('bdthemes_ai_image_max_upload_width');
delete_site_option('bdthemes_ai_image_max_upload_width');
delete_option('bdthemes_ai_image_max_upload_height');
delete_site_option('bdthemes_ai_image_max_upload_height');
delete_option('bdthemes_ai_image_default_provider');
delete_site_option('bdthemes_ai_image_default_provider');
delete_option('bdthemes_ai_image_attribution');
delete_site_option('bdthemes_ai_image_attribution');
delete_option('bdthemes_ai_image_hide_media_modal_tab');
delete_site_option('bdthemes_ai_image_hide_media_modal_tab');
delete_option('bdthemes_ai_image_custom_sizes');
delete_site_option('bdthemes_ai_image_custom_sizes');
delete_option('bdthemes_ai_image_items_per_page');
delete_site_option('bdthemes_ai_image_items_per_page');
delete_option('bdthemes_ai_image_auto_alt_text');
delete_site_option('bdthemes_ai_image_auto_alt_text');
delete_option('bdthemes_ai_image_auto_title');
delete_site_option('bdthemes_ai_image_auto_title');
delete_option('bdthemes_ai_image_default_view_mode');
delete_site_option('bdthemes_ai_image_default_view_mode');
delete_option('bdthemes_ai_image_thumbnail_size');
delete_site_option('bdthemes_ai_image_thumbnail_size');
delete_option('bdthemes_ai_image_load_more_mode');
delete_site_option('bdthemes_ai_image_load_more_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_w' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_size_h' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_crop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

