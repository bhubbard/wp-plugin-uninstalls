<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lab404_related_posts_options');
delete_site_option('lab404_related_posts_options');
delete_option('lab404_related_posts_version');
delete_site_option('lab404_related_posts_version');

