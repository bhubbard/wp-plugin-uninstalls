<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wmm_enabled');
delete_site_option('wmm_enabled');
delete_option('wmm_template');
delete_site_option('wmm_template');
delete_option('wmm_logo');
delete_site_option('wmm_logo');
delete_option('wmm_background_option');
delete_site_option('wmm_background_option');
delete_option('wmm_background_image');
delete_site_option('wmm_background_image');
delete_option('wmm_background_color');
delete_site_option('wmm_background_color');
delete_option('wmm_disable_on');
delete_site_option('wmm_disable_on');
delete_option('wmm_content_heading');
delete_site_option('wmm_content_heading');
delete_option('wmm_content');
delete_site_option('wmm_content');
delete_option('wmm_content_border');
delete_site_option('wmm_content_border');
delete_option('wmm_border_color');
delete_site_option('wmm_border_color');
delete_option('wmm_content_color');
delete_site_option('wmm_content_color');
delete_option('wmm_facebook_link');
delete_site_option('wmm_facebook_link');
delete_option('wmm_twitter_link');
delete_site_option('wmm_twitter_link');
delete_option('wmm_linkedin_link');
delete_site_option('wmm_linkedin_link');
delete_option('wmm_instagram_link');
delete_site_option('wmm_instagram_link');
delete_option('wmm_youtube_link');
delete_site_option('wmm_youtube_link');
delete_option('wmm_email_link');
delete_site_option('wmm_email_link');
delete_option('wmm_phone_number');
delete_site_option('wmm_phone_number');
delete_option('wmm_icon_color');
delete_site_option('wmm_icon_color');
delete_option('wmm_page_title');
delete_site_option('wmm_page_title');
delete_option('wmm_favicon');
delete_site_option('wmm_favicon');
delete_option('wmm_enable_gtracking');
delete_site_option('wmm_enable_gtracking');
delete_option('wmm_ga_tracking_id');
delete_site_option('wmm_ga_tracking_id');
delete_option('wmm_background_video');
delete_site_option('wmm_background_video');

// Clear Cron Jobs
wp_clear_scheduled_hook('wmm_check_disable_maintenance');

