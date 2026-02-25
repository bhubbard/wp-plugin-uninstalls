<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpa_reviews_notice_hide');
delete_site_option('wpa_reviews_notice_hide');
delete_option('wpa_pateron_notice_hide');
delete_site_option('wpa_pateron_notice_hide');
delete_option('wpa_extended_notice_hide');
delete_site_option('wpa_extended_notice_hide');
delete_option('wpa_installed_date');
delete_site_option('wpa_installed_date');
delete_option('wpa_stats');
delete_site_option('wpa_stats');
delete_option('wpa_field_name');
delete_site_option('wpa_field_name');
delete_option('wpa_error_message');
delete_site_option('wpa_error_message');
delete_option('wpa_disable_test_widget');
delete_site_option('wpa_disable_test_widget');
delete_option('wpa_disable_jquery');
delete_site_option('wpa_disable_jquery');

