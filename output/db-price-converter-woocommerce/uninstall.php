<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('db_woo_converter_currency_from');
delete_site_option('db_woo_converter_currency_from');
delete_option('db_woo_converter_currency_to');
delete_site_option('db_woo_converter_currency_to');
delete_option('db_woo_converter_date');
delete_site_option('db_woo_converter_date');
delete_option('db_woo_converter_date_cbr');
delete_site_option('db_woo_converter_date_cbr');
delete_option('db_woo_converter_rate_cbr');
delete_site_option('db_woo_converter_rate_cbr');
delete_option('db_woo_converter_rate');
delete_site_option('db_woo_converter_rate');
delete_option('db_woo_converter_if_cbr');
delete_site_option('db_woo_converter_if_cbr');
delete_option('db_woo_converter_margin');
delete_site_option('db_woo_converter_margin');
delete_option('db_woo_converter_status');
delete_site_option('db_woo_converter_status');
delete_option('db_woo_converter_round');
delete_site_option('db_woo_converter_round');

