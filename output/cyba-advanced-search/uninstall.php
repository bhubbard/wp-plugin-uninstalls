<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('category_1');
delete_site_option('category_1');
delete_option('category_2');
delete_site_option('category_2');
delete_option('cyba_posts_per_page');
delete_site_option('cyba_posts_per_page');

