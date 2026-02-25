<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maxx_psp_enable_single_property_schema');
delete_site_option('maxx_psp_enable_single_property_schema');
delete_option('maxx_psp_aggregate_rating_enable');
delete_site_option('maxx_psp_aggregate_rating_enable');
delete_option('maxx_psp_randomize_ratings');
delete_site_option('maxx_psp_randomize_ratings');
delete_option('maxx_psp_schema_type');
delete_site_option('maxx_psp_schema_type');
delete_option('maxx_psp_currency_type');
delete_site_option('maxx_psp_currency_type');
delete_option('maxx_psp_price_valid_until');
delete_site_option('maxx_psp_price_valid_until');
delete_option('maxx_psp_breadcrumb_options');
delete_site_option('maxx_psp_breadcrumb_options');

