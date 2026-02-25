<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecsa-install-date');
delete_site_option('ecsa-install-date');
delete_option('ecsa_initial_save_version');
delete_site_option('ecsa_initial_save_version');
delete_option('ecsa-ratingDiv');
delete_site_option('ecsa-ratingDiv');
delete_option('ecsa-installDate');
delete_site_option('ecsa-installDate');
delete_option('ecsa-v');
delete_site_option('ecsa-v');
delete_option('ecsa-type');
delete_site_option('ecsa-type');
delete_option('cpfm_opt_in_choice_cool_events');
delete_site_option('cpfm_opt_in_choice_cool_events');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ecsa_extra_data_update');

