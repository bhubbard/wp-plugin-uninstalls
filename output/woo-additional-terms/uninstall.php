<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_woo_additional_terms_page_id');
delete_site_option('_woo_additional_terms_page_id');
delete_option('_woo_additional_terms_notice');
delete_site_option('_woo_additional_terms_notice');
delete_option('_woo_additional_terms_error');
delete_site_option('_woo_additional_terms_error');
delete_option('woo_additional_terms_onboarding');
delete_site_option('woo_additional_terms_onboarding');
delete_option('woo_additional_terms_rated');
delete_site_option('woo_additional_terms_rated');
delete_option('woo_additional_terms_activation_timestamp');
delete_site_option('woo_additional_terms_activation_timestamp');
delete_option('woo_additional_terms_options');
delete_site_option('woo_additional_terms_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

