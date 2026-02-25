<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('d8cf7_client_api_key');
delete_site_option('d8cf7_client_api_key');
delete_option('d8cf7_predictiveaddress_options');
delete_site_option('d8cf7_predictiveaddress_options');
delete_option('d8cf7_predictiveaddress');
delete_site_option('d8cf7_predictiveaddress');
delete_option('d8cf7_telephone_validation');
delete_site_option('d8cf7_telephone_validation');
delete_option('d8cf7_telephone_default_country');
delete_site_option('d8cf7_telephone_default_country');
delete_option('d8cf7_telephone_allowed_prefixes');
delete_site_option('d8cf7_telephone_allowed_prefixes');
delete_option('d8cf7_telephone_barred_prefixes');
delete_site_option('d8cf7_telephone_barred_prefixes');
delete_option('d8cf7_telephone_required_country');
delete_site_option('d8cf7_telephone_required_country');
delete_option('d8cf7_ajax_key');
delete_site_option('d8cf7_ajax_key');
delete_option('d8cf7_telephone_advanced_options');
delete_site_option('d8cf7_telephone_advanced_options');
delete_option('d8cf7_email_validation_level');
delete_site_option('d8cf7_email_validation_level');
delete_option('d8cf7_salaciousName');
delete_site_option('d8cf7_salaciousName');
delete_option('d8cf7_bank_validation');
delete_site_option('d8cf7_bank_validation');
delete_option('d8cf7_error');
delete_site_option('d8cf7_error');
delete_option('d8cf7_password');
delete_site_option('d8cf7_password');

