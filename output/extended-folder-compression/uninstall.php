<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tinypng_api_key');
delete_site_option('tinypng_api_key');
delete_option('efctin_processed_images');
delete_site_option('efctin_processed_images');
delete_option('efctin_log');
delete_site_option('efctin_log');
delete_option('efctin_log_ct');
delete_site_option('efctin_log_ct');
delete_option('efctin_log_mb');
delete_site_option('efctin_log_mb');
delete_option('efctin_days');
delete_site_option('efctin_days');
delete_option('efctin_target_folder');
delete_site_option('efctin_target_folder');
delete_option('efctin_auto_hours');
delete_site_option('efctin_auto_hours');
delete_option('efctin_auto');
delete_site_option('efctin_auto');

// Delete Transients
delete_transient('efctin_next_run');
delete_site_transient('efctin_next_run');

