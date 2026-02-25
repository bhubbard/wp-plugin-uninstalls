<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcses_sort_toggle');
delete_site_option('wcses_sort_toggle');
delete_option('wcses_min_max_quantity_options');
delete_site_option('wcses_min_max_quantity_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

