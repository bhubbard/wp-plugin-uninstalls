<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('activity_log_db_version');
delete_site_option('activity_log_db_version');

// Delete Transients
delete_transient('elementor_site_mailer_campaign');
delete_site_transient('elementor_site_mailer_campaign');
delete_transient('elementor_image_optimization_campaign');
delete_site_transient('elementor_image_optimization_campaign');

// Clear Cron Jobs
wp_clear_scheduled_hook('aal/maintenance/clear_old_items');

