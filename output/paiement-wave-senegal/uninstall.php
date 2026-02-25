<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pw_wave_license_key');
delete_site_option('pw_wave_license_key');
delete_option('pw_wave_license_status');
delete_site_option('pw_wave_license_status');
delete_option('pw_wave_license_last_check');
delete_site_option('pw_wave_license_last_check');
delete_option('pw_wave_trial_started');
delete_site_option('pw_wave_trial_started');
delete_option('pw_wave_trial_end');
delete_site_option('pw_wave_trial_end');
delete_option('pw_wave_license_data');
delete_site_option('pw_wave_license_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('pw_wave_license_check_event');

