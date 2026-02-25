<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rss_language');
delete_site_option('rss_language');
delete_option('oni_daiko_title');
delete_site_option('oni_daiko_title');
delete_option('oni_daiko_limit');
delete_site_option('oni_daiko_limit');
delete_option('oni_daiko_contents');
delete_site_option('oni_daiko_contents');
delete_option('oni_daiko_text_limit');
delete_site_option('oni_daiko_text_limit');

