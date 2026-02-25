<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wp_social_ninja_version');
delete_site_option('_wp_social_ninja_version');
delete_option('wpsr_statuses');
delete_site_option('wpsr_statuses');
delete_option('__wpsr_license');
delete_site_option('__wpsr_license');
delete_option('wpsr_facebook_feed_global_settings');
delete_site_option('wpsr_facebook_feed_global_settings');
delete_option('wpsr_instagram_global_settings');
delete_site_option('wpsr_instagram_global_settings');
delete_option('wpsr_instagram_verification_configs');
delete_site_option('wpsr_instagram_verification_configs');
delete_option('wpsr_reviews_facebook_settings');
delete_site_option('wpsr_reviews_facebook_settings');
delete_option('wpsr_youtube_global_settings');
delete_site_option('wpsr_youtube_global_settings');
delete_option('_wpsn_ids');
delete_site_option('_wpsn_ids');
delete_option('advance_settings');
delete_site_option('advance_settings');
delete_option('last_fetched_tripadvisor_review_id');
delete_site_option('last_fetched_tripadvisor_review_id');
delete_option('wpsr_reviews_google_connected_accounts');
delete_site_option('wpsr_reviews_google_connected_accounts');
delete_option('wpsr_reviews_google_locations_list');
delete_site_option('wpsr_reviews_google_locations_list');
delete_option('wpsr_reviews_facebook_pages_list');
delete_site_option('wpsr_reviews_facebook_pages_list');
delete_option('wpsr_available_valid_platforms');
delete_site_option('wpsr_available_valid_platforms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_business_info' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsr_twitter_cards_data');
delete_site_option('wpsr_twitter_cards_data');
delete_option('wpsr_global_settings');
delete_site_option('wpsr_global_settings');
delete_option('wpsr_optimize_images_table_status');
delete_site_option('wpsr_optimize_images_table_status');
delete_option('wpsr_errors');
delete_site_option('wpsr_errors');
delete_option('wpsr_global_shoppable_settings');
delete_site_option('wpsr_global_shoppable_settings');
delete_option('wpsr_twitter_verification_configs');
delete_site_option('wpsr_twitter_verification_configs');
delete_option('wpsr_youtube_verification_configs');
delete_site_option('wpsr_youtube_verification_configs');
delete_option('wpsr_fluent_forms_global_settings');
delete_site_option('wpsr_fluent_forms_global_settings');
delete_option('wpsr_last_m_run');
delete_site_option('wpsr_last_m_run');
delete_option('wpsr_onboarding_sessions');
delete_site_option('wpsr_onboarding_sessions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_global_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_verification_configs' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsr_facebook_feed_connected_sources_config');
delete_site_option('wpsr_facebook_feed_connected_sources_config');
delete_option('wpsr_facebook_feed_verification_configs');
delete_site_option('wpsr_facebook_feed_verification_configs');
delete_option('wpsr_facebook_feed_authorized_sources');
delete_site_option('wpsr_facebook_feed_authorized_sources');
delete_option('wpsr_instagram_authorized_business_accounts_list');
delete_site_option('wpsr_instagram_authorized_business_accounts_list');
delete_option('wpsr_twitter_global_settings');
delete_site_option('wpsr_twitter_global_settings');
delete_option('wpsr_tiktok_connected_sources_config');
delete_site_option('wpsr_tiktok_connected_sources_config');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_local_avatars' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_local_covers' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsr_reviews_facebook_business_info');
delete_site_option('wpsr_reviews_facebook_business_info');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_revoke_platform_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_connected_sources_config' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsr_reviews_airbnb_business_info');
delete_site_option('wpsr_reviews_airbnb_business_info');
delete_option('last_fetched_reviews_id');
delete_site_option('last_fetched_reviews_id');
delete_option('wpsr_reviews_aliexpress_business_info');
delete_site_option('wpsr_reviews_aliexpress_business_info');
delete_option('wpsr_reviews_google_verification_configs');
delete_site_option('wpsr_reviews_google_verification_configs');
delete_option('wpsr_google_global_settings');
delete_site_option('wpsr_google_global_settings');
delete_option('wpsr_reviews_google_business_info');
delete_site_option('wpsr_reviews_google_business_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpsr_cron_job');
wp_clear_scheduled_hook('wpsr_do_email_report_scheduled_tasks');
wp_clear_scheduled_hook('wpsr_scheduled_twicedaily');
wp_clear_scheduled_hook('wpsr_scheduled_weekly');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpsr_template_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpsr_template_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpsr_template_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpsr_template_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpsn_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpsn_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpsn_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpsn_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ct_other_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ct_other_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ct_other_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ct_other_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpsr-settings-woo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpsr-settings-woo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpsr-settings-woo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpsr-settings-woo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpsr_template_styles_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpsr_template_styles_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpsr_template_styles_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpsr_template_styles_config' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpsr_driver' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpsr_driver' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpsr_driver' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpsr_driver' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wpsn_elementor_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wpsn_elementor_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wpsn_elementor_ids' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wpsn_elementor_ids' ) );

