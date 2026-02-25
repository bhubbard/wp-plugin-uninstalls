<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_icon_list');
delete_site_option('social_icon_list');
delete_option('socail_btn_style');
delete_site_option('socail_btn_style');
delete_option('button_position');
delete_site_option('button_position');
delete_option('social_post_types');
delete_site_option('social_post_types');
delete_option('facebook_app_id');
delete_site_option('facebook_app_id');
delete_option('youtube_username');
delete_site_option('youtube_username');
delete_option('instagram_username');
delete_site_option('instagram_username');

