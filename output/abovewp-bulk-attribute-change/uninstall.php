<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abovewp_bulk_attribute_change_options');
delete_site_option('abovewp_bulk_attribute_change_options');
delete_option('abovewp_bulk_attribute_change_progress');
delete_site_option('abovewp_bulk_attribute_change_progress');

// Delete Transients
delete_transient('abovewp_bulk_attribute_change_all_products');
delete_site_transient('abovewp_bulk_attribute_change_all_products');

