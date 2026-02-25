<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enudge_api_call');
delete_site_option('enudge_api_call');
delete_option('enudge_error_log');
delete_site_option('enudge_error_log');
delete_option('enudge_licence_key_checked');
delete_site_option('enudge_licence_key_checked');
delete_option('enudge_licence_key_valid');
delete_site_option('enudge_licence_key_valid');
delete_option('enudge_licence_key');
delete_site_option('enudge_licence_key');
delete_option('enudge_support_elementor_forms');
delete_site_option('enudge_support_elementor_forms');
delete_option('enudge_support_contact_form_7');
delete_site_option('enudge_support_contact_form_7');
delete_option('enudge_support_wpforms');
delete_site_option('enudge_support_wpforms');
delete_option('enudge_support_gravity_forms');
delete_site_option('enudge_support_gravity_forms');
delete_option('enudge_support_formidable_forms');
delete_site_option('enudge_support_formidable_forms');
delete_option('enudge_support_forminator_forms');
delete_site_option('enudge_support_forminator_forms');
delete_option('enudge_support_fluentforms_forms');
delete_site_option('enudge_support_fluentforms_forms');
delete_option('disable_comments');
delete_site_option('disable_comments');
delete_option('enudge_support_wp_comment');
delete_site_option('enudge_support_wp_comment');
delete_option('enudge_support_woocommerce_review');
delete_site_option('enudge_support_woocommerce_review');
delete_option('enudge_support_registration');
delete_site_option('enudge_support_registration');
delete_option('enudge_store_log');
delete_site_option('enudge_store_log');
delete_option('enudge_support_woocommerce_registration');
delete_site_option('enudge_support_woocommerce_registration');

