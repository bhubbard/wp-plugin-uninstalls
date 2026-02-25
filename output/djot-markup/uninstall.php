<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdjot_settings');
delete_site_option('wpdjot_settings');
delete_option('wp_djot_settings');
delete_site_option('wp_djot_settings');

