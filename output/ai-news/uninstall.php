<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ainews_language');
delete_site_option('ainews_language');
delete_option('ainews_post_status');
delete_site_option('ainews_post_status');
delete_option('ainews_schedule_interval');
delete_site_option('ainews_schedule_interval');
delete_option('ainews_article_count');
delete_site_option('ainews_article_count');
delete_option('ainews_selected_topics');
delete_site_option('ainews_selected_topics');
delete_option('ainews_prompt_type');
delete_site_option('ainews_prompt_type');
delete_option('ainews_prompt_language');
delete_site_option('ainews_prompt_language');
delete_option('ainews_custom_interval');
delete_site_option('ainews_custom_interval');
delete_option('ainews_auto_enabled');
delete_site_option('ainews_auto_enabled');
delete_option('ainews_schedule_paused');
delete_site_option('ainews_schedule_paused');
delete_option('ainews_auto_generated_count');
delete_site_option('ainews_auto_generated_count');
delete_option('ainews_api_key');
delete_site_option('ainews_api_key');
delete_option('ainews_keep_data_on_uninstall');
delete_site_option('ainews_keep_data_on_uninstall');
delete_option('ainews_post_category');
delete_site_option('ainews_post_category');
delete_option('ainews_last_auto_run');
delete_site_option('ainews_last_auto_run');
delete_option('ainews_last_auto_interval');
delete_site_option('ainews_last_auto_interval');
delete_option('ainews_custom_prompt');
delete_site_option('ainews_custom_prompt');
delete_option('ainews_auto_featured_image');
delete_site_option('ainews_auto_featured_image');
delete_option('ainews_image_generation_service');
delete_site_option('ainews_image_generation_service');
delete_option('ainews_openai_api_key');
delete_site_option('ainews_openai_api_key');
delete_option('ainews_siliconflow_api_key');
delete_site_option('ainews_siliconflow_api_key');
delete_option('ainews_deepseek_api_key');
delete_site_option('ainews_deepseek_api_key');
delete_option('ainews_image_dimensions');
delete_site_option('ainews_image_dimensions');
delete_option('ainews_image_style');
delete_site_option('ainews_image_style');
delete_option('ainews_unsplash_access_key');
delete_site_option('ainews_unsplash_access_key');
delete_option('ainews_pixabay_api_key');
delete_site_option('ainews_pixabay_api_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('ainews_generate_articles');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ainews_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ainews_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ainews_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ainews_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ainews_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ainews_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ainews_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ainews_language' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ainews_featured_image_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ainews_featured_image_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ainews_featured_image_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ainews_featured_image_generated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ainews_featured_image_service' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ainews_featured_image_service' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ainews_featured_image_service' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ainews_featured_image_service' ) );

