<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocketship_seo_bot_detector_settings');
delete_site_option('rocketship_seo_bot_detector_settings');
delete_option('rocketship_seo_db_version');
delete_site_option('rocketship_seo_db_version');
delete_option('rocketship_seo_settings');
delete_site_option('rocketship_seo_settings');
delete_option('rocketship_seo_ai_redirect_settings');
delete_site_option('rocketship_seo_ai_redirect_settings');
delete_option('rocketship_seo_bot_redirect_settings');
delete_site_option('rocketship_seo_bot_redirect_settings');
delete_option('rocketship_seo_google_oauth_client_id');
delete_site_option('rocketship_seo_google_oauth_client_id');
delete_option('rocketship_seo_google_oauth_client_secret');
delete_site_option('rocketship_seo_google_oauth_client_secret');
delete_option('rocketship_seo_google_oauth_access_token');
delete_site_option('rocketship_seo_google_oauth_access_token');
delete_option('rocketship_seo_google_oauth_refresh_token');
delete_site_option('rocketship_seo_google_oauth_refresh_token');
delete_option('rocketship_seo_google_oauth_token_expires');
delete_site_option('rocketship_seo_google_oauth_token_expires');
delete_option('rocketship_seo_google_places_api_key');
delete_site_option('rocketship_seo_google_places_api_key');
delete_option('rocketship_seo_reviews_cache_duration');
delete_site_option('rocketship_seo_reviews_cache_duration');
delete_option('rocketship_seo_reviews_custom_css');
delete_site_option('rocketship_seo_reviews_custom_css');
delete_option('rocketship_seo_saved_place_ids');
delete_site_option('rocketship_seo_saved_place_ids');
delete_option('rocketship_seo_reviews_fetch_method');
delete_site_option('rocketship_seo_reviews_fetch_method');
delete_option('rocketship_seo_version');
delete_site_option('rocketship_seo_version');
delete_option('rocketship_seo_bot_detector_table_version');
delete_site_option('rocketship_seo_bot_detector_table_version');
delete_option('rocketship_seo_file_rules_settings');
delete_site_option('rocketship_seo_file_rules_settings');
delete_option('rocketship_seo_indexing_settings');
delete_site_option('rocketship_seo_indexing_settings');
delete_option('rocketship_seo_indexnow_log');
delete_site_option('rocketship_seo_indexnow_log');
delete_option('rocketship_seo_indexnow_stats');
delete_site_option('rocketship_seo_indexnow_stats');
delete_option('rocketship_seo_admin_notices');
delete_site_option('rocketship_seo_admin_notices');
delete_option('rocketship_seo_redirect_table_version');
delete_site_option('rocketship_seo_redirect_table_version');
delete_option('rocketship_seo_reviews_auth_method');
delete_site_option('rocketship_seo_reviews_auth_method');
delete_option('rocketship_seo_reviews_oauth_token');
delete_site_option('rocketship_seo_reviews_oauth_token');
delete_option('rocketship_seo_reviews_oauth_refresh_token');
delete_site_option('rocketship_seo_reviews_oauth_refresh_token');
delete_option('rocketship_seo_reviews_oauth_token_expiry');
delete_site_option('rocketship_seo_reviews_oauth_token_expiry');
delete_option('rocketship_seo_reviews_oauth_account_info');
delete_site_option('rocketship_seo_reviews_oauth_account_info');
delete_option('rocketship_seo_reviews_oauth_client_id');
delete_site_option('rocketship_seo_reviews_oauth_client_id');
delete_option('rocketship_seo_reviews_oauth_client_secret');
delete_site_option('rocketship_seo_reviews_oauth_client_secret');
delete_option('rocketship_seo_visual_sitemap_settings');
delete_site_option('rocketship_seo_visual_sitemap_settings');
delete_option('rocketship_seo_update_history');
delete_site_option('rocketship_seo_update_history');

// Delete Transients
delete_transient('rocketship_seo_updating');
delete_site_transient('rocketship_seo_updating');

// Clear Cron Jobs
wp_clear_scheduled_hook('rocketship_seo_cleanup_bot_logs');
wp_clear_scheduled_hook('rocketship_seo_indexnow_auto_submit');
wp_clear_scheduled_hook('rocketship_reviews_daily_sync');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rocketship_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rocketship_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rocketship_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rocketship_seo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rocketship_seo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rocketship_seo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rocketship_seo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rocketship_seo_meta_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rocketship_seo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rocketship_seo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rocketship_seo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rocketship_seo_meta_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rocketship_seo_exclude_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rocketship_seo_exclude_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rocketship_seo_exclude_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rocketship_seo_exclude_sitemap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rocketship_seo_disable_toc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rocketship_seo_disable_toc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rocketship_seo_disable_toc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rocketship_seo_disable_toc' ) );

