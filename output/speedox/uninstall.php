<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speedox_database_optimization');
delete_site_option('speedox_database_optimization');
delete_option('speedox_optimized_image_count');
delete_site_option('speedox_optimized_image_count');
delete_option('speedox_cleaned_db_tables');
delete_site_option('speedox_cleaned_db_tables');

// Delete Transients
delete_transient('speedox_admin_notice');
delete_site_transient('speedox_admin_notice');

