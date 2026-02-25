<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('timeslot-company-tab');
delete_site_option('timeslot-company-tab');
delete_option('timeslot-email-tab');
delete_site_option('timeslot-email-tab');
delete_option('timeslot-payment-methods-tab');
delete_site_option('timeslot-payment-methods-tab');
delete_option('timeslot-booking-form-tab');
delete_site_option('timeslot-booking-form-tab');
delete_option('timeslot_plugin_version');
delete_site_option('timeslot_plugin_version');
delete_option('timeslot_db_version');
delete_site_option('timeslot_db_version');
delete_option('timeslot-setup-complete');
delete_site_option('timeslot-setup-complete');
delete_option('timeslot-business-hours');
delete_site_option('timeslot-business-hours');
delete_option('timeslot-holidays');
delete_site_option('timeslot-holidays');
delete_option('timeslot-service-categories');
delete_site_option('timeslot-service-categories');
delete_option('timeslot-appearance-tab');
delete_site_option('timeslot-appearance-tab');

// Delete Transients
delete_transient('timeslot_import');
delete_site_transient('timeslot_import');

// Clear Cron Jobs
wp_clear_scheduled_hook('tslot_create_multilang_services');

