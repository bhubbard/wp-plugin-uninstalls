<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alanforms_contact_form_7_integration');
delete_site_option('alanforms_contact_form_7_integration');
delete_option('alanforms_elementor_pro_integration');
delete_site_option('alanforms_elementor_pro_integration');
delete_option('alanforms_site_key_field');
delete_site_option('alanforms_site_key_field');
delete_option('alanforms_api_key_field');
delete_site_option('alanforms_api_key_field');
delete_option('alanforms_language');
delete_site_option('alanforms_language');
delete_option('alanforms_language_attribute_unverified');
delete_site_option('alanforms_language_attribute_unverified');
delete_option('alanforms_language_attribute_verified');
delete_site_option('alanforms_language_attribute_verified');
delete_option('alanforms_language_attribute_retry');
delete_site_option('alanforms_language_attribute_retry');
delete_option('alanforms_language_attribute_working');
delete_site_option('alanforms_language_attribute_working');
delete_option('alanforms_language_attribute_start');
delete_site_option('alanforms_language_attribute_start');

