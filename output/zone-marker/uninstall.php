<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gil_zm_settings');
delete_site_option('gil_zm_settings');
delete_option('gil_zm_layout');
delete_site_option('gil_zm_layout');

