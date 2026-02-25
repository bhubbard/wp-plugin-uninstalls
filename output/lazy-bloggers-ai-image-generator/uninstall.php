<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lazy_bloggers_ai_image_generator_logs');
delete_site_option('lazy_bloggers_ai_image_generator_logs');
delete_option('lazy_bloggers_ai_image_generator_api_key');
delete_site_option('lazy_bloggers_ai_image_generator_api_key');
delete_option('lazy_bloggers_ai_image_generator_size');
delete_site_option('lazy_bloggers_ai_image_generator_size');
delete_option('lazy_bloggers_ai_image_generator_include_title');
delete_site_option('lazy_bloggers_ai_image_generator_include_title');
delete_option('lazy_bloggers_ai_image_generator_include_category');
delete_site_option('lazy_bloggers_ai_image_generator_include_category');
delete_option('lazy_bloggers_ai_image_generator_include_tag');
delete_site_option('lazy_bloggers_ai_image_generator_include_tag');
delete_option('lazy_bloggers_ai_image_generator_use_post_content');
delete_site_option('lazy_bloggers_ai_image_generator_use_post_content');
delete_option('lazy_bloggers_ai_image_generator_style_prompt');
delete_site_option('lazy_bloggers_ai_image_generator_style_prompt');
delete_option('lazy_bloggers_ai_image_generator_enable_logging');
delete_site_option('lazy_bloggers_ai_image_generator_enable_logging');

// Clear Cron Jobs
wp_clear_scheduled_hook('lazy_bloggers_ai_image_generator_delayed_image_generation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

