<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('calcfusion-wp-options');
delete_site_option('calcfusion-wp-options');
delete_option('calcfusion_wp_admin_notices');
delete_site_option('calcfusion_wp_admin_notices');

