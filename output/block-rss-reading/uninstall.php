<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom_rss_url');
delete_site_option('custom_rss_url');
delete_option('blocked_ip_list');
delete_site_option('blocked_ip_list');
delete_option('block_rss_reading');
delete_site_option('block_rss_reading');

