<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bit_wc_zoho_books_integrate_key_data');
delete_site_option('bit_wc_zoho_books_integrate_key_data');
delete_option('bit_wcb_form_secret_api_key');
delete_site_option('bit_wcb_form_secret_api_key');
delete_option('bit_wc_zoho_books_installed');
delete_site_option('bit_wc_zoho_books_installed');
delete_option('bit_wc_zoho_books_version');
delete_site_option('bit_wc_zoho_books_version');

// Delete Transients
delete_transient('bit_wc_zoho_books_activation_redirect');
delete_site_transient('bit_wc_zoho_books_activation_redirect');
delete_transient('bit_wc_zoho_books_prevent_tracker_notice');
delete_site_transient('bit_wc_zoho_books_prevent_tracker_notice');

