<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blogPostFilterStickyPosts');
delete_site_option('blogPostFilterStickyPosts');
delete_option('blogPostFilterCategories');
delete_site_option('blogPostFilterCategories');

