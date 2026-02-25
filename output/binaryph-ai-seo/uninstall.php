<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('binaryph_ai_seo_grok_api_key');
delete_site_option('binaryph_ai_seo_grok_api_key');
delete_option('binaryph_ai_seo_gemini_api_key');
delete_site_option('binaryph_ai_seo_gemini_api_key');
delete_option('binaryph_ai_seo_openrouter_api_key');
delete_site_option('binaryph_ai_seo_openrouter_api_key');
delete_option('binaryph_ai_seo_ollama_api_key');
delete_site_option('binaryph_ai_seo_ollama_api_key');
delete_option('binaryph_ai_seo_openwebui_api_key');
delete_site_option('binaryph_ai_seo_openwebui_api_key');
delete_option('binaryph_ai_seo_openwebui_instance_url');
delete_site_option('binaryph_ai_seo_openwebui_instance_url');
delete_option('binaryph_ai_seo_default_ai');
delete_site_option('binaryph_ai_seo_default_ai');
delete_option('binaryph_ai_seo_ai_model');
delete_site_option('binaryph_ai_seo_ai_model');
delete_option('binaryph_ai_seo_pages_last_synced');
delete_site_option('binaryph_ai_seo_pages_last_synced');
delete_option('binaryph_ai_seo_posts_last_synced');
delete_site_option('binaryph_ai_seo_posts_last_synced');
delete_option('binaryph_ai_seo_products_last_synced');
delete_site_option('binaryph_ai_seo_products_last_synced');
delete_option('binaryph_ai_seo_schedule_enabled');
delete_site_option('binaryph_ai_seo_schedule_enabled');
delete_option('binaryph_ai_seo_schedule_frequency');
delete_site_option('binaryph_ai_seo_schedule_frequency');
delete_option('binaryph_ai_seo_schedule_time');
delete_site_option('binaryph_ai_seo_schedule_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('binaryph_ai_seo_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_focuskw' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_focus_keyword' ) );

