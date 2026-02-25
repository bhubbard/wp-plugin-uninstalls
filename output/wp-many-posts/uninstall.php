<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('manyposts_settings');
delete_site_option('manyposts_settings');
delete_option('ManyPosts_settings');
delete_site_option('ManyPosts_settings');

