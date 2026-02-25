<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ects_options');
delete_site_option('ects_options');
delete_option('ect-install-date');
delete_site_option('ect-install-date');
delete_option('ect-initial-save-version');
delete_site_option('ect-initial-save-version');
delete_option('cpfm_opt_in_choice_cool_events');
delete_site_option('cpfm_opt_in_choice_cool_events');
delete_option('ect-free-installDate');
delete_site_option('ect-free-installDate');
delete_option('ect-ratingDiv');
delete_site_option('ect-ratingDiv');
delete_option('ect_elementor_notice_dismissed');
delete_site_option('ect_elementor_notice_dismissed');
delete_option('ect_divi_notice_dismissed');
delete_site_option('ect_divi_notice_dismissed');
delete_option('ect-v');
delete_site_option('ect-v');
delete_option('ect-type');
delete_site_option('ect-type');
delete_option('settings_migration_status');
delete_site_option('settings_migration_status');
delete_option('ect_options');
delete_site_option('ect_options');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ect_extra_data_update');

