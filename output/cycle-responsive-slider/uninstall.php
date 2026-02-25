<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('caza_wp_cycle_settings');
delete_site_option('caza_wp_cycle_settings');
delete_option('caza_wp_cycle_images');
delete_site_option('caza_wp_cycle_images');

