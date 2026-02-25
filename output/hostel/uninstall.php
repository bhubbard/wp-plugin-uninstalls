<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wphostel_booking_mode');
delete_site_option('wphostel_booking_mode');
delete_option('wphostel_email_options');
delete_site_option('wphostel_email_options');
delete_option('wphostel_min_stay');
delete_site_option('wphostel_min_stay');
delete_option('hostelpro_cleanup_email_log');
delete_site_option('hostelpro_cleanup_email_log');
delete_option('wphostel_booking_start');
delete_site_option('wphostel_booking_start');
delete_option('wphostel_ical_import_error');
delete_site_option('wphostel_ical_import_error');
delete_option('wphostel_locale_url');
delete_site_option('wphostel_locale_url');
delete_option('wphostel_datepicker_css');
delete_site_option('wphostel_datepicker_css');
delete_option('wphostel_currency');
delete_site_option('wphostel_currency');
delete_option('wphostel_version');
delete_site_option('wphostel_version');
delete_option('wphostel_debug_mode');
delete_site_option('wphostel_debug_mode');
delete_option('wphostel_cleanup_hours');
delete_site_option('wphostel_cleanup_hours');
delete_option('wphostel_max_date');
delete_site_option('wphostel_max_date');
delete_option('wphostel_paypal');
delete_site_option('wphostel_paypal');
delete_option('wphostel_use_pdt');
delete_site_option('wphostel_use_pdt');
delete_option('wphostel_pdt_token');
delete_site_option('wphostel_pdt_token');
delete_option('wphostel_errorlog');
delete_site_option('wphostel_errorlog');
delete_option('wphostel_cleanup_db');
delete_site_option('wphostel_cleanup_db');

