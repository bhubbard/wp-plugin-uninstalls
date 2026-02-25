<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfkg_feed_key_status');
delete_site_option('wpfkg_feed_key_status');
delete_option('feed_key');
delete_site_option('feed_key');
delete_option('feed_key_status');
delete_site_option('feed_key_status');
delete_option('wpfkg_feed_key');
delete_site_option('wpfkg_feed_key');

