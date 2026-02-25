<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tecc-install-date');
delete_site_option('tecc-install-date');
delete_option('tecc_initial_save_version');
delete_site_option('tecc_initial_save_version');
delete_option('tecc-ratingDiv');
delete_site_option('tecc-ratingDiv');
delete_option('tecc-installDate');
delete_site_option('tecc-installDate');
delete_option('tecc-v');
delete_site_option('tecc-v');
delete_option('tecc-type');
delete_site_option('tecc-type');
delete_option('tecc-cpfm-data-sharing');
delete_site_option('tecc-cpfm-data-sharing');
delete_option('tecc_settings');
delete_site_option('tecc_settings');
delete_option('cpfm_opt_in_choice_cool_events');
delete_site_option('cpfm_opt_in_choice_cool_events');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('tecc_extra_data_update');

