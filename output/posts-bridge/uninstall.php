<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posts-bridge-jwt-secret');
delete_site_option('posts-bridge-jwt-secret');
delete_option('posts-bridge_general');
delete_site_option('posts-bridge_general');
delete_option('posts-bridge_wp');
delete_site_option('posts-bridge_wp');
delete_option('posts-bridge_wp-rest');
delete_site_option('posts-bridge_wp-rest');
delete_option('posts-bridge_rest-api');
delete_site_option('posts-bridge_rest-api');
delete_option('posts-bridge_rest');
delete_site_option('posts-bridge_rest');
delete_option('http-bridge_general');
delete_site_option('http-bridge_general');
delete_option('posts-bridge_http');
delete_site_option('posts-bridge_http');
delete_option('_posts_bridge_detach_queue');
delete_site_option('_posts_bridge_detach_queue');

