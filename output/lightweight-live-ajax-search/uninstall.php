<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpls_replace_theme_search');
delete_site_option('wpls_replace_theme_search');
delete_option('wpls_search_post_types');
delete_site_option('wpls_search_post_types');

