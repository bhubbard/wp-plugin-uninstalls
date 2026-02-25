<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_folksonomy');
delete_site_option('wp_folksonomy');
delete_option('rss_language');
delete_site_option('rss_language');

