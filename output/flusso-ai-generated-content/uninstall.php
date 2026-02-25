<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_key' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('emn_fl_organization_id');
delete_site_option('emn_fl_organization_id');
delete_option('emn_fl_openai_platform_settings_gpt_4');
delete_site_option('emn_fl_openai_platform_settings_gpt_4');
delete_option('emn_fl_content_features_key_points_border_color');
delete_site_option('emn_fl_content_features_key_points_border_color');
delete_option('emn_fl_content_features_key_points_hide_border');
delete_site_option('emn_fl_content_features_key_points_hide_border');
delete_option('emn_fl_content_features_key_points_hide_label');
delete_site_option('emn_fl_content_features_key_points_hide_label');
delete_option('emn_fl_content_features_key_points_label');
delete_site_option('emn_fl_content_features_key_points_label');
delete_option('emn_fl_content_features_key_points_position');
delete_site_option('emn_fl_content_features_key_points_position');
delete_option('emn_fl_content_features_product_description_language');
delete_site_option('emn_fl_content_features_product_description_language');
delete_option('emn_fl_content_features_key_points_show');
delete_site_option('emn_fl_content_features_key_points_show');
delete_option('emn_fl_content_features_key_points_when_saving');
delete_site_option('emn_fl_content_features_key_points_when_saving');
delete_option('emn_fl_openai_key');
delete_site_option('emn_fl_openai_key');
delete_option('emn_fl_content_features_block_translation_language');
delete_site_option('emn_fl_content_features_block_translation_language');
delete_option('emn_fl_content_features_post_creator_language');
delete_site_option('emn_fl_content_features_post_creator_language');
delete_option('emn_fl_content_features_comments_sentiment_activate');
delete_site_option('emn_fl_content_features_comments_sentiment_activate');
delete_option('emn_fl_content_features_key_points_n');
delete_site_option('emn_fl_content_features_key_points_n');
delete_option('emn_fl_content_features_key_points_language');
delete_site_option('emn_fl_content_features_key_points_language');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'emn_fl_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'emn_fl_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'emn_fl_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'emn_fl_ai_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_emn_fl_key_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_emn_fl_key_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_emn_fl_key_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_emn_fl_key_points' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'emn_fl_sentiment_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'emn_fl_sentiment_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'emn_fl_sentiment_score' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'emn_fl_sentiment_score' ) );

