<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('features');
delete_site_option('features');
delete_option('instockavailability');
delete_site_option('instockavailability');
delete_option('ifoutofstock');
delete_site_option('ifoutofstock');
delete_option('include_tax');
delete_site_option('include_tax');
delete_option('group_variations');
delete_site_option('group_variations');
delete_option('custom_productId');
delete_site_option('custom_productId');
delete_option('custom_mpn');
delete_site_option('custom_mpn');
delete_option('skroutz_atts_color');
delete_site_option('skroutz_atts_color');
delete_option('skroutz_atts_size');
delete_site_option('skroutz_atts_size');
delete_option('skroutz_atts_manuf');
delete_site_option('skroutz_atts_manuf');
delete_option('exclude_cats');
delete_site_option('exclude_cats');
delete_option('enable_gtin');
delete_site_option('enable_gtin');
delete_option('gtin_label');
delete_site_option('gtin_label');
delete_option('gtin_value');
delete_site_option('gtin_value');
delete_option('rollback');
delete_site_option('rollback');
delete_option('last_update');
delete_site_option('last_update');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

// Clear Cron Jobs
wp_clear_scheduled_hook('skroutz_xml_hourly_event');

