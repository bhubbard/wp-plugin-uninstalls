<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tvapm_email');
delete_site_option('tvapm_email');
delete_option('tvapm_settings');
delete_site_option('tvapm_settings');
delete_option('tvapm_site_id');
delete_site_option('tvapm_site_id');
delete_option('tvapm_14_days_trial_applied');
delete_site_option('tvapm_14_days_trial_applied');
delete_option('tvapm_entitlements');
delete_site_option('tvapm_entitlements');
delete_option('tvapm_is_trial');
delete_site_option('tvapm_is_trial');
delete_option('tvapm_is_paid');
delete_site_option('tvapm_is_paid');
delete_option('tvapm_trial_end');
delete_site_option('tvapm_trial_end');

// Clear Cron Jobs
wp_clear_scheduled_hook('tvapm_weekly_email');
wp_clear_scheduled_hook('tvapm_viking_heartbeat');

