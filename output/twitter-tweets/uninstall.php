<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wl_twitter_api_settings');
delete_site_option('wl_twitter_api_settings');
delete_option('ali_twitter_shortcode');
delete_site_option('ali_twitter_shortcode');

