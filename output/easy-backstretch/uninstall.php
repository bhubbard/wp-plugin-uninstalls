<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_backstretch_settings');
delete_site_option('easy_backstretch_settings');
delete_option('easy_backstretch_images');
delete_site_option('easy_backstretch_images');

