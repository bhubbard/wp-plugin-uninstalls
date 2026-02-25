<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gpagespeedi_options');
delete_site_option('gpagespeedi_options');
delete_option('gpagespeedi_ui_options');
delete_site_option('gpagespeedi_ui_options');
delete_option('gpagespeedi_upgrade_recheck_required');
delete_site_option('gpagespeedi_upgrade_recheck_required');
delete_option('gpi_abort_scan');
delete_site_option('gpi_abort_scan');
delete_option('gpi_recheck_urls');
delete_site_option('gpi_recheck_urls');
delete_option('gpi_progress');
delete_site_option('gpi_progress');
delete_option('gpi_check_now');
delete_site_option('gpi_check_now');
delete_option('gpi_missed_url_groups');
delete_site_option('gpi_missed_url_groups');
delete_option('gpi_error_message');
delete_site_option('gpi_error_message');

// Clear Cron Jobs
wp_clear_scheduled_hook('googlepagespeedinsightsworker');
wp_clear_scheduled_hook('gpi_prune_logs');

