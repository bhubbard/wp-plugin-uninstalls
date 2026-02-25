<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mobcodes_activate');
delete_site_option('wp_mobcodes_activate');
delete_option('wp_mobcodes_deferred_admin_notices');
delete_site_option('wp_mobcodes_deferred_admin_notices');

