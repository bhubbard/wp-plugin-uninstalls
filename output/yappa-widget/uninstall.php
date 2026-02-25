<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('all_posts');
delete_site_option('all_posts');
delete_option('all_pages');
delete_site_option('all_pages');

