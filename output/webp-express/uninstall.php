<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webp-express-alter-html-replacement');
delete_site_option('webp-express-alter-html-replacement');
delete_option('webp-express-alter-html-hooks');
delete_site_option('webp-express-alter-html-hooks');
delete_option('webp-express-activation-error');
delete_site_option('webp-express-activation-error');
delete_option('cache-enabler');
delete_site_option('cache-enabler');

// Clear Cron Jobs
wp_clear_scheduled_hook('webp_express_task_regenerate_config_and_htaccess');
wp_clear_scheduled_hook('webp_express_task_bulk_update_dummy_files');

