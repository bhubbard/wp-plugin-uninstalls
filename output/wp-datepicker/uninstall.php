<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpdp_range');
delete_site_option('wpdp_range');
delete_option('wpdp_enqueue_url');
delete_site_option('wpdp_enqueue_url');
delete_option('wp_datepicker_wpadmin');
delete_site_option('wp_datepicker_wpadmin');
delete_option('wpdp_options');
delete_site_option('wpdp_options');
delete_option('wpdp_developer_options');
delete_site_option('wpdp_developer_options');
delete_option('wpdp_previous_version_compatible');
delete_site_option('wpdp_previous_version_compatible');
delete_option('wp_datepicker');
delete_site_option('wp_datepicker');
delete_option('wp_datepicker_language');
delete_site_option('wp_datepicker_language');
delete_option('wp_datepicker_weekends');
delete_site_option('wp_datepicker_weekends');
delete_option('wp_datepicker_autocomplete');
delete_site_option('wp_datepicker_autocomplete');
delete_option('wp_datepicker_beforeShowDay');
delete_site_option('wp_datepicker_beforeShowDay');
delete_option('wp_datepicker_months');
delete_site_option('wp_datepicker_months');
delete_option('wp_datepicker_readonly');
delete_site_option('wp_datepicker_readonly');
delete_option('wpdp_fonts');
delete_site_option('wpdp_fonts');
delete_option('wpdp_global_settings');
delete_site_option('wpdp_global_settings');

