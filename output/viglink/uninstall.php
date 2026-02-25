<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('key');
delete_site_option('key');
delete_option('is-not-first-load');
delete_site_option('is-not-first-load');
delete_option('enable-rss-rewrites');
delete_site_option('enable-rss-rewrites');

