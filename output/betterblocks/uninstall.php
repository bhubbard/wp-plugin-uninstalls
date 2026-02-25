<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('betterblocks_post_types');
delete_site_option('betterblocks_post_types');
delete_option('betterblocks_remove_directory');
delete_site_option('betterblocks_remove_directory');
delete_option('betterblocks_force_preview');
delete_site_option('betterblocks_force_preview');
delete_option('betterblocks_sidebar_acf');
delete_site_option('betterblocks_sidebar_acf');

