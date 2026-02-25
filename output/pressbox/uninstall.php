<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lh_pressbox_consumer_key');
delete_site_option('lh_pressbox_consumer_key');
delete_option('lh_pressbox_consumer_secret');
delete_site_option('lh_pressbox_consumer_secret');
delete_option('lh_pressbox_access_token');
delete_site_option('lh_pressbox_access_token');
delete_option('lh_pressbox_access_token_secret');
delete_site_option('lh_pressbox_access_token_secret');
delete_option('lh_pressbox_default_path');
delete_site_option('lh_pressbox_default_path');
delete_option('lh_pressbox_show_thumbnails');
delete_site_option('lh_pressbox_show_thumbnails');
delete_option('lh_pressbox_favorites');
delete_site_option('lh_pressbox_favorites');
delete_option('lh_pressbox_uid');
delete_site_option('lh_pressbox_uid');
delete_option('lh_pressbox_oauth_token');
delete_site_option('lh_pressbox_oauth_token');
delete_option('lh_pressbox_oauth_token_secret');
delete_site_option('lh_pressbox_oauth_token_secret');
delete_option('lh_pressbox_display_name');
delete_site_option('lh_pressbox_display_name');
delete_option('lh_pressbox_quota');
delete_site_option('lh_pressbox_quota');
delete_option('lh_pressbox_shared');
delete_site_option('lh_pressbox_shared');
delete_option('lh_pressbox_normal');
delete_site_option('lh_pressbox_normal');

