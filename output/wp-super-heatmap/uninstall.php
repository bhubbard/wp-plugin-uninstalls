<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_super_heatmap_date_options');
delete_site_option('wp_super_heatmap_date_options');
delete_option('wp_super_heatmap_options');
delete_site_option('wp_super_heatmap_options');

