<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wr_general_enabled');
delete_site_option('wr_general_enabled');
delete_option('wr_general_debug');
delete_site_option('wr_general_debug');
delete_option('wr_general_apipath');
delete_site_option('wr_general_apipath');
delete_option('wr_general_site_token');
delete_site_option('wr_general_site_token');
delete_option('wr_general_consumer_key');
delete_site_option('wr_general_consumer_key');
delete_option('wr_general_consumer_secret');
delete_site_option('wr_general_consumer_secret');
delete_option('wr_general_enable_gdpr_marketing');
delete_site_option('wr_general_enable_gdpr_marketing');
delete_option('wr_general_ticket');
delete_site_option('wr_general_ticket');
delete_option('wr_general_abandoned_cart_expiry');
delete_site_option('wr_general_abandoned_cart_expiry');
delete_option('wr_general_import_run');
delete_site_option('wr_general_import_run');
delete_option('wr_plugin_wordpress_generate_sitemap');
delete_site_option('wr_plugin_wordpress_generate_sitemap');
delete_option('wr_plugin_wordpress_rabbit_id');
delete_site_option('wr_plugin_wordpress_rabbit_id');
delete_option('wr_plugin_wordpress_site_id');
delete_site_option('wr_plugin_wordpress_site_id');
delete_option('wr_plugin_wordpress_wr_token');
delete_site_option('wr_plugin_wordpress_wr_token');
delete_option('wr_plugin_wordpress_script_url');
delete_site_option('wr_plugin_wordpress_script_url');
delete_option('wr_plugin_wordpress_script_token');
delete_site_option('wr_plugin_wordpress_script_token');
delete_option('wr_whiterabbit_wp_token');
delete_site_option('wr_whiterabbit_wp_token');
delete_option('wr_plugin_wordpress_message_log');
delete_site_option('wr_plugin_wordpress_message_log');
delete_option('wr_plugin_wordpress_analytics_piwik_enabled');
delete_site_option('wr_plugin_wordpress_analytics_piwik_enabled');
delete_option('wr_plugin_wordpress_analytics_piwik_debug_enabled');
delete_site_option('wr_plugin_wordpress_analytics_piwik_debug_enabled');
delete_option('wr_plugin_wordpress_analytics_piwik_code');
delete_site_option('wr_plugin_wordpress_analytics_piwik_code');
delete_option('wr_plugin_wordpress_analytics_piwik_api_code');
delete_site_option('wr_plugin_wordpress_analytics_piwik_api_code');
delete_option('wr_plugin_wordpress_analytics_ecommerce_goal_id');
delete_site_option('wr_plugin_wordpress_analytics_ecommerce_goal_id');
delete_option('wr_whiterabbit_analytics_newsletter_goal_id');
delete_site_option('wr_whiterabbit_analytics_newsletter_goal_id');
delete_option('wr_post_default_author_id');
delete_site_option('wr_post_default_author_id');
delete_option('wr_post_default_category_id');
delete_site_option('wr_post_default_category_id');
delete_option('wr_theme_settings');
delete_site_option('wr_theme_settings');
delete_option('wr_plugin_wordpress_data_import_run');
delete_site_option('wr_plugin_wordpress_data_import_run');
delete_option('wr_plugin_wordpress_suite_operation_token');
delete_site_option('wr_plugin_wordpress_suite_operation_token');
delete_option('wr_plugin_wordpress_data_import');
delete_site_option('wr_plugin_wordpress_data_import');
delete_option('wr_plugin_wordpress_suite_gdpr_list');
delete_site_option('wr_plugin_wordpress_suite_gdpr_list');
delete_option('wr_whiterabbit_piwik_url');
delete_site_option('wr_whiterabbit_piwik_url');
delete_option('wr_plugin_log_enabled');
delete_site_option('wr_plugin_log_enabled');
delete_option('wr_commonpages');
delete_site_option('wr_commonpages');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');

// Clear Cron Jobs
wp_clear_scheduled_hook('wr_execute_cron');
wp_clear_scheduled_hook('wr_remove_abandoned_cart');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wr_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wr_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wr_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wr_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sseo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sseo_meta_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sseo_meta_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sseo_meta_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sseo_meta_keywords' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

