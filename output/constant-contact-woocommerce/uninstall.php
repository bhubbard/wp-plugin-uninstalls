<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cc_abandoned_carts_db_version');
delete_site_option('cc_abandoned_carts_db_version');
delete_option('cc_woo_import_connection_established');
delete_site_option('cc_woo_import_connection_established');
delete_option('cc_woo_store_information_first_name');
delete_site_option('cc_woo_store_information_first_name');
delete_option('cc_woo_store_information_last_name');
delete_site_option('cc_woo_store_information_last_name');
delete_option('cc_woo_store_information_phone_number');
delete_site_option('cc_woo_store_information_phone_number');
delete_option('cc_woo_store_information_store_name');
delete_site_option('cc_woo_store_information_store_name');
delete_option('cc_woo_store_information_currency');
delete_site_option('cc_woo_store_information_currency');
delete_option('cc_woo_store_information_contact_email');
delete_site_option('cc_woo_store_information_contact_email');
delete_option('cc_woo_store_information_alt_login_url');
delete_site_option('cc_woo_store_information_alt_login_url');
delete_option('constant_contact_for_woo_has_setup');
delete_site_option('constant_contact_for_woo_has_setup');
delete_option('cc_woo_customer_data_allow_import');
delete_site_option('cc_woo_customer_data_allow_import');
delete_option('cc-woo-is-reviewed');
delete_site_option('cc-woo-is-reviewed');
delete_option('cc-woo-review-dismissed-count');
delete_site_option('cc-woo-review-dismissed-count');
delete_option('cc_woo_store_information_checkbox_location');
delete_site_option('cc_woo_store_information_checkbox_location');
delete_option('cc_abandoned_checkouts_db_version');
delete_site_option('cc_abandoned_checkouts_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('cc_woo_check_expired_checkouts');

