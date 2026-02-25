<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('disable_post_comments_options');
delete_site_option('disable_post_comments_options');
delete_option('disable_comments_post_types');
delete_site_option('disable_comments_post_types');

