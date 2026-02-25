<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_type_to_feed');
delete_site_option('post_type_to_feed');
delete_option('post_cont_in_feed');
delete_site_option('post_cont_in_feed');
delete_option('rss_language');
delete_site_option('rss_language');

