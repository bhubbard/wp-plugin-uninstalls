<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sitepush_options');
delete_site_option('sitepush_options');

// Delete Transients
delete_transient('sitepush_force_show_wp_errors');
delete_site_transient('sitepush_force_show_wp_errors');

