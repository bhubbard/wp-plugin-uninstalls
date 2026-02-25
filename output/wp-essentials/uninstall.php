<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpe_google_analytics');
delete_site_option('wpe_google_analytics');
delete_option('wpe_google_link_tracking');
delete_site_option('wpe_google_link_tracking');
delete_option('wpe_flickr_stream');
delete_site_option('wpe_flickr_stream');
delete_option('wpe_flickr_db');
delete_site_option('wpe_flickr_db');
delete_option('wpe_flickr_username');
delete_site_option('wpe_flickr_username');
delete_option('wpe_flickr_api');
delete_site_option('wpe_flickr_api');
delete_option('wpe_google_maps');
delete_site_option('wpe_google_maps');
delete_option('wpe_twitter_stream');
delete_site_option('wpe_twitter_stream');
delete_option('wpe_twitter_db');
delete_site_option('wpe_twitter_db');
delete_option('wpe_twitter_accounts');
delete_site_option('wpe_twitter_accounts');
delete_option('wpe_twitter_username');
delete_site_option('wpe_twitter_username');
delete_option('wpe_twitter_consumer_key');
delete_site_option('wpe_twitter_consumer_key');
delete_option('wpe_twitter_consumer_secret');
delete_site_option('wpe_twitter_consumer_secret');
delete_option('wpe_twitter_oauth_access_token');
delete_site_option('wpe_twitter_oauth_access_token');
delete_option('wpe_twitter_oauth_access_token_secret');
delete_site_option('wpe_twitter_oauth_access_token_secret');
delete_option('wpe_twitter_1');
delete_site_option('wpe_twitter_1');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpe_twitter_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpe_total_user_roles');
delete_site_option('wpe_total_user_roles');
delete_option('wpe_cleanup');
delete_site_option('wpe_cleanup');
delete_option('wpe_lowercase_filenames');
delete_site_option('wpe_lowercase_filenames');
delete_option('wpe_user_role_1');
delete_site_option('wpe_user_role_1');
delete_option('wpe_error_reports_google_analytics');
delete_site_option('wpe_error_reports_google_analytics');
delete_option('wpe_error_reports_search_engines');
delete_site_option('wpe_error_reports_search_engines');
delete_option('wpe_error_reports_check_username');
delete_site_option('wpe_error_reports_check_username');
delete_option('wpe_error_reports_check_holding');
delete_site_option('wpe_error_reports_check_holding');
delete_option('wpe_error_reports_check_licence');
delete_site_option('wpe_error_reports_check_licence');
delete_option('wpe_footer_link');
delete_site_option('wpe_footer_link');
delete_option('wpe_php_date');
delete_site_option('wpe_php_date');
delete_option('wpe_debug_mode');
delete_site_option('wpe_debug_mode');
delete_option('wpe_custom_image_sizes');
delete_site_option('wpe_custom_image_sizes');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpe_image_size_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpe_image_quality');
delete_site_option('wpe_image_quality');
delete_option('wpe_facebook');
delete_site_option('wpe_facebook');
delete_option('wpe_style');
delete_site_option('wpe_style');
delete_option('wpe_responsive');
delete_site_option('wpe_responsive');
delete_option('wpe_email');
delete_site_option('wpe_email');
delete_option('wpe_video');
delete_site_option('wpe_video');
delete_option('wpe_get');
delete_site_option('wpe_get');
delete_option('wpe_excerpt');
delete_site_option('wpe_excerpt');
delete_option('wpe_get_image_source');
delete_site_option('wpe_get_image_source');
delete_option('wpe_link_it');
delete_site_option('wpe_link_it');
delete_option('wpe_relative_time');
delete_site_option('wpe_relative_time');
delete_option('wpe_backup');
delete_site_option('wpe_backup');
delete_option('wpe_login_notification');
delete_site_option('wpe_login_notification');
delete_option('wpe_holding_page');
delete_site_option('wpe_holding_page');
delete_option('wpe_holding_page_password');
delete_site_option('wpe_holding_page_password');
delete_option('wpe_holding_page_header');
delete_site_option('wpe_holding_page_header');
delete_option('wpe_holding_page_message');
delete_site_option('wpe_holding_page_message');
delete_option('wpe_instagram_username');
delete_site_option('wpe_instagram_username');
delete_option('wpe_instagram_client_id');
delete_site_option('wpe_instagram_client_id');
delete_option('wpe_instagram_client_secret');
delete_site_option('wpe_instagram_client_secret');
delete_option('wpe_social_stream_label');
delete_site_option('wpe_social_stream_label');
delete_option('wpe_social_stream_per_page');
delete_site_option('wpe_social_stream_per_page');
delete_option('wpe_social_stream_twitter');
delete_site_option('wpe_social_stream_twitter');
delete_option('wpe_social_stream_instagram');
delete_site_option('wpe_social_stream_instagram');
delete_option('wpe_social_stream_flickr');
delete_site_option('wpe_social_stream_flickr');
delete_option('wpe_social_stream_infinite');
delete_site_option('wpe_social_stream_infinite');
delete_option('wpe_instagram_user_id');
delete_site_option('wpe_instagram_user_id');
delete_option('wpe_instagram_access_token');
delete_site_option('wpe_instagram_access_token');

// Clear Cron Jobs
wp_clear_scheduled_hook('weekly_backup');

