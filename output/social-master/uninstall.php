<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_master_system_wide_facebook_display');
delete_site_option('social_master_system_wide_facebook_display');
delete_option('social_master_system_wide_facebook_page');
delete_site_option('social_master_system_wide_facebook_page');
delete_option('social_master_system_wide_facebook_lang');
delete_site_option('social_master_system_wide_facebook_lang');
delete_option('social_master_system_wide_facebook_id');
delete_site_option('social_master_system_wide_facebook_id');
delete_option('social_master_system_wide_facebook_og_name_on');
delete_site_option('social_master_system_wide_facebook_og_name_on');
delete_option('social_master_system_wide_facebook_og_type_on');
delete_site_option('social_master_system_wide_facebook_og_type_on');
delete_option('social_master_system_wide_facebook_og_title_on');
delete_site_option('social_master_system_wide_facebook_og_title_on');
delete_option('social_master_system_wide_facebook_og_url_on');
delete_site_option('social_master_system_wide_facebook_og_url_on');
delete_option('social_master_system_wide_facebook_og_description_on');
delete_site_option('social_master_system_wide_facebook_og_description_on');
delete_option('social_master_system_wide_facebook_og_image_on');
delete_site_option('social_master_system_wide_facebook_og_image_on');
delete_option('social_master_system_wide_facebook_og_image');
delete_site_option('social_master_system_wide_facebook_og_image');
delete_option('social_master_system_wide_twitter_user');
delete_site_option('social_master_system_wide_twitter_user');
delete_option('social_master_system_wide_twitter_follow_w');
delete_site_option('social_master_system_wide_twitter_follow_w');
delete_option('social_master_system_wide_twitter_tweet_w');
delete_site_option('social_master_system_wide_twitter_tweet_w');
delete_option('social_master_system_wide_linkedin_page');
delete_site_option('social_master_system_wide_linkedin_page');
delete_option('social_master_system_wide_youtube_id');
delete_site_option('social_master_system_wide_youtube_id');
delete_option('social_master_system_wide_instagram_user');
delete_site_option('social_master_system_wide_instagram_user');
delete_option('social_master_system_wide_soundcloud_page');
delete_site_option('social_master_system_wide_soundcloud_page');
delete_option('social_master_system_wide_reverbnation_page');
delete_site_option('social_master_system_wide_reverbnation_page');
delete_option('social_master_system_wide_spotify_page');
delete_site_option('social_master_system_wide_spotify_page');
delete_option('social_master_system_wide_feedly_page');
delete_site_option('social_master_system_wide_feedly_page');
delete_option('social_master_wb_show_display');
delete_site_option('social_master_wb_show_display');
delete_option('tsm_quote');
delete_site_option('tsm_quote');

