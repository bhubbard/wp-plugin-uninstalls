<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weibo_oauth_token');
delete_site_option('weibo_oauth_token');
delete_option('weibo_oauth_secret');
delete_site_option('weibo_oauth_secret');

