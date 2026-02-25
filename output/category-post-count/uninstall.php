<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category-post-count');
delete_site_option('category-post-count');
delete_option('category_post_count');
delete_site_option('category_post_count');

