<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('griffinforms_db_migrations_version');
delete_site_option('griffinforms_db_migrations_version');
delete_option('griffinforms_lifetime_submission_count_backfilled');
delete_site_option('griffinforms_lifetime_submission_count_backfilled');
delete_option('griffinforms_form_element_form_id_backfilled');
delete_site_option('griffinforms_form_element_form_id_backfilled');
delete_option('griffinforms_form_element_form_id_backfill_last_id');
delete_site_option('griffinforms_form_element_form_id_backfill_last_id');
delete_option('griffinforms_activation_redirect');
delete_site_option('griffinforms_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('griffinforms_process_jobs');
wp_clear_scheduled_hook('griffinforms_log_cleanup');

