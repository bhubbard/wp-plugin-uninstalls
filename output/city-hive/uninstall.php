<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('api-key');
delete_site_option('api-key');
delete_option('show_in_multiple_posts_pages');
delete_site_option('show_in_multiple_posts_pages');

