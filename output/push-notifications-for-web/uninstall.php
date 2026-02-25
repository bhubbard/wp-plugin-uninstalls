<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notification_authDomain');
delete_site_option('notification_authDomain');
delete_option('notification_apiKey');
delete_site_option('notification_apiKey');
delete_option('notification_projectId');
delete_site_option('notification_projectId');
delete_option('notification_storageBucket');
delete_site_option('notification_storageBucket');
delete_option('notification_senderId');
delete_site_option('notification_senderId');
delete_option('notification_appId');
delete_site_option('notification_appId');
delete_option('notification_jsonfile');
delete_site_option('notification_jsonfile');
delete_option('notification_server_key');
delete_site_option('notification_server_key');
delete_option('wpn_enable_for_post');
delete_site_option('wpn_enable_for_post');
delete_option('wpn_post_message');
delete_site_option('wpn_post_message');
delete_option('wpn_post_icon');
delete_site_option('wpn_post_icon');
delete_option('wpn_post_image');
delete_site_option('wpn_post_image');

