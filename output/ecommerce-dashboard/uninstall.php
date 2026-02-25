<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecommerce_dashboard_options');
delete_site_option('ecommerce_dashboard_options');

// Delete Transients
delete_transient('ecommerce_dashboard_stats');
delete_site_transient('ecommerce_dashboard_stats');

