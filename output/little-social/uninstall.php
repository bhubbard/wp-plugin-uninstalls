<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_random_posts_show_flag');
delete_site_option('social_random_posts_show_flag');
delete_option('social_number_of_posts');
delete_site_option('social_number_of_posts');
delete_option('facebook_number_of_posts');
delete_site_option('facebook_number_of_posts');
delete_option('linkedin_number_of_posts');
delete_site_option('linkedin_number_of_posts');
delete_option('twitter_number_of_posts');
delete_site_option('twitter_number_of_posts');
delete_option('instagram_number_of_posts');
delete_site_option('instagram_number_of_posts');
delete_option('social_cron_frequency');
delete_site_option('social_cron_frequency');
delete_option('days_to_keep_social_posts');
delete_site_option('days_to_keep_social_posts');
delete_option('social_twitter_api_key');
delete_site_option('social_twitter_api_key');
delete_option('social_twitter_api_secret');
delete_site_option('social_twitter_api_secret');
delete_option('social_twitter_username');
delete_site_option('social_twitter_username');
delete_option('social_twitter_show_flag');
delete_site_option('social_twitter_show_flag');
delete_option('social_twitter_show_retweet_flag');
delete_site_option('social_twitter_show_retweet_flag');
delete_option('social_twitter_show_media_flag');
delete_site_option('social_twitter_show_media_flag');
delete_option('social_twitter_profile_image');
delete_site_option('social_twitter_profile_image');
delete_option('social_facebook_api_secret');
delete_site_option('social_facebook_api_secret');
delete_option('social_facebook_api_key');
delete_site_option('social_facebook_api_key');
delete_option('social_facebook_username');
delete_site_option('social_facebook_username');
delete_option('social_facebook_show_flag');
delete_site_option('social_facebook_show_flag');
delete_option('social_facebook_show_media_flag');
delete_site_option('social_facebook_show_media_flag');
delete_option('social_facebook_profile_image');
delete_site_option('social_facebook_profile_image');
delete_option('social_instagram_client_id');
delete_site_option('social_instagram_client_id');
delete_option('social_instagram_redirect_url');
delete_site_option('social_instagram_redirect_url');
delete_option('social_instagram_access_token');
delete_site_option('social_instagram_access_token');
delete_option('social_instagram_access_token_link');
delete_site_option('social_instagram_access_token_link');
delete_option('social_instagram_show_flag');
delete_site_option('social_instagram_show_flag');
delete_option('social_instagram_show_media_flag');
delete_site_option('social_instagram_show_media_flag');
delete_option('social_instagram_profile_image');
delete_site_option('social_instagram_profile_image');
delete_option('social_linkedin_show_flag');
delete_site_option('social_linkedin_show_flag');
delete_option('social_linkedin_username');
delete_site_option('social_linkedin_username');
delete_option('social_linkedin_access_token');
delete_site_option('social_linkedin_access_token');
delete_option('social_linkedin_page_url');
delete_site_option('social_linkedin_page_url');
delete_option('social_linkedin_show_media_flag');
delete_site_option('social_linkedin_show_media_flag');
delete_option('social_linkedin_profile_image');
delete_site_option('social_linkedin_profile_image');

// Clear Cron Jobs
wp_clear_scheduled_hook('little_social_cron_job');

