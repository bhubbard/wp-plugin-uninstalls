<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_fluentform_pdf_settings');
delete_site_option('_fluentform_pdf_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('fluentform_pdf_cleanup_tmp_dir');

