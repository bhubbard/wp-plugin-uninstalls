<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('koppel_je_boekhouding_importer_id');
delete_site_option('koppel_je_boekhouding_importer_id');
delete_option('koppel_je_boekhouding_connection_status');
delete_site_option('koppel_je_boekhouding_connection_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('koppel_je_boekhouding_connection_check_event');

