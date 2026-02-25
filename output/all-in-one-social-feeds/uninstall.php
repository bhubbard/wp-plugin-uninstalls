<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('netgo_facebook_app_id');
delete_site_option('netgo_facebook_app_id');
delete_option('netgo_facebook_secret_key');
delete_site_option('netgo_facebook_secret_key');
delete_option('netgo_facebook_page_id');
delete_site_option('netgo_facebook_page_id');
delete_option('netgo_ins_user_id');
delete_site_option('netgo_ins_user_id');
delete_option('netgo_ins_access_token');
delete_site_option('netgo_ins_access_token');
delete_option('netgo_pi_user_name');
delete_site_option('netgo_pi_user_name');
delete_option('netgo_access_token');
delete_site_option('netgo_access_token');
delete_option('netgo_access_token_secret');
delete_site_option('netgo_access_token_secret');
delete_option('netgo_consumer_key');
delete_site_option('netgo_consumer_key');
delete_option('netgo_consumer_secret');
delete_site_option('netgo_consumer_secret');
delete_option('netgo_screen_name');
delete_site_option('netgo_screen_name');
delete_option('netgo_youtube_video_url');
delete_site_option('netgo_youtube_video_url');
delete_option('netgo_facebook_enable_jquery');
delete_site_option('netgo_facebook_enable_jquery');
delete_option('netgo_fb_enable');
delete_site_option('netgo_fb_enable');
delete_option('netgo_tw_enable');
delete_site_option('netgo_tw_enable');
delete_option('netgo_ins_enable');
delete_site_option('netgo_ins_enable');
delete_option('netgo_pi_enable');
delete_site_option('netgo_pi_enable');
delete_option('netgo_yt_enable');
delete_site_option('netgo_yt_enable');
delete_option('netgo_box_h');
delete_site_option('netgo_box_h');
delete_option('netgo_feeds');
delete_site_option('netgo_feeds');
delete_option('netgo_jquery_include');
delete_site_option('netgo_jquery_include');

