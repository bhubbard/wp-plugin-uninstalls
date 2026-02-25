<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('social_feed_ez_app_id');
delete_site_option('social_feed_ez_app_id');
delete_option('social_feed_ez_app_secret');
delete_site_option('social_feed_ez_app_secret');
delete_option('social_feed_ez_ll_access_token');
delete_site_option('social_feed_ez_ll_access_token');
delete_option('social_feed_ez_page_id');
delete_site_option('social_feed_ez_page_id');
delete_option('social_feed_ez_access_token');
delete_site_option('social_feed_ez_access_token');
delete_option('social_feed_display_type');
delete_site_option('social_feed_display_type');
delete_option('social_feed_ez_field__options');
delete_site_option('social_feed_ez_field__options');

