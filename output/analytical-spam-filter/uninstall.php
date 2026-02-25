<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('analytical_spam_filter_settings_db');
delete_site_option('analytical_spam_filter_settings_db');
delete_option('analytical_spam_filter_salt');
delete_site_option('analytical_spam_filter_salt');
delete_option('analytical_spam_filter_hash_field_id');
delete_site_option('analytical_spam_filter_hash_field_id');
delete_option('analytical_spam_filter_honeypot_field_id');
delete_site_option('analytical_spam_filter_honeypot_field_id');
delete_option('analytical_spam_filter_duration_field_id');
delete_site_option('analytical_spam_filter_duration_field_id');
delete_option('analytical_spam_filter_database_version');
delete_site_option('analytical_spam_filter_database_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('analytical_spam_filter_cron_hook');

