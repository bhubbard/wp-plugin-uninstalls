<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wc_attribute_taxonomies');
delete_site_transient('wc_attribute_taxonomies');

// Clear Cron Jobs
wp_clear_scheduled_hook('update_stocks_job_action');

