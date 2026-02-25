<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('block_ai_crawlers_custom_robots_txt');
delete_site_option('block_ai_crawlers_custom_robots_txt');

