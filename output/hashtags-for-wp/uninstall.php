<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hashtags_for_wp_color');
delete_site_option('hashtags_for_wp_color');
delete_option('hashtags_for_wp_symbol');
delete_site_option('hashtags_for_wp_symbol');

