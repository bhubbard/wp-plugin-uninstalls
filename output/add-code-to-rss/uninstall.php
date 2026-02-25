<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('add_to_rss_code_before');
delete_site_option('add_to_rss_code_before');
delete_option('add_to_rss_code_after');
delete_site_option('add_to_rss_code_after');

