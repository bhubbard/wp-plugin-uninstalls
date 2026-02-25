<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shipinsure_woocommerce_is_authorized');
delete_site_option('shipinsure_woocommerce_is_authorized');
delete_option('shipinsure_is_staging_site');
delete_site_option('shipinsure_is_staging_site');
delete_option('shipinsure_production_site_url');
delete_site_option('shipinsure_production_site_url');
delete_option('shipinsure_debug_mode');
delete_site_option('shipinsure_debug_mode');
delete_option('shipinsure_widget_position');
delete_site_option('shipinsure_widget_position');
delete_option('shipinsure_widget_alignment');
delete_site_option('shipinsure_widget_alignment');
delete_option('shipinsure_coverage_type');
delete_site_option('shipinsure_coverage_type');
delete_option('shipinsure_widget_logo');
delete_site_option('shipinsure_widget_logo');
delete_option('shipinsure_widget_logo_size');
delete_site_option('shipinsure_widget_logo_size');
delete_option('shipinsure_widget_title_color');
delete_site_option('shipinsure_widget_title_color');
delete_option('shipinsure_widget_title_size');
delete_site_option('shipinsure_widget_title_size');
delete_option('shipinsure_widget_desc_color');
delete_site_option('shipinsure_widget_desc_color');
delete_option('shipinsure_widget_desc_size');
delete_site_option('shipinsure_widget_desc_size');
delete_option('shipinsure_widget_price_color');
delete_site_option('shipinsure_widget_price_color');
delete_option('shipinsure_widget_price_size');
delete_site_option('shipinsure_widget_price_size');
delete_option('shipinsure_widget_toggle_on');
delete_site_option('shipinsure_widget_toggle_on');
delete_option('shipinsure_widget_toggle_off');
delete_site_option('shipinsure_widget_toggle_off');
delete_option('shipinsure_fee_type');
delete_site_option('shipinsure_fee_type');
delete_option('shipinsure_use_single_sku');
delete_site_option('shipinsure_use_single_sku');
delete_option('shipinsure_widget_title');
delete_site_option('shipinsure_widget_title');
delete_option('shipinsure_widget_description');
delete_site_option('shipinsure_widget_description');
delete_option('shipinsure_disclaimer_enabled');
delete_site_option('shipinsure_disclaimer_enabled');
delete_option('shipinsure_company_name');
delete_site_option('shipinsure_company_name');
delete_option('shipinsure_disclaimer_text');
delete_site_option('shipinsure_disclaimer_text');
delete_option('shipinsure_script_enabled');
delete_site_option('shipinsure_script_enabled');
delete_option('shipinsure_script_tag');
delete_site_option('shipinsure_script_tag');
delete_option('shipinsure_script_version');
delete_site_option('shipinsure_script_version');
delete_option('shipinsure_widget_logo_id');
delete_site_option('shipinsure_widget_logo_id');
delete_option('shipinsure_merchant_uuid');
delete_site_option('shipinsure_merchant_uuid');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('shipinsure_merchant_record');
delete_site_option('shipinsure_merchant_record');
delete_option('shipinsure_woocommerce_keys');
delete_site_option('shipinsure_woocommerce_keys');
delete_option('shipinsure_fee_prices');
delete_site_option('shipinsure_fee_prices');
delete_option('shipinsure_protection_prices');
delete_site_option('shipinsure_protection_prices');

// Delete Transients
delete_transient('_shipinsure_activation_redirect');
delete_site_transient('_shipinsure_activation_redirect');

