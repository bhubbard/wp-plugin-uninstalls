<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_pdc_columns');
delete_site_option('wc_pdc_columns');
delete_option('wc_pdc_product_images');
delete_site_option('wc_pdc_product_images');
delete_option('wc_pdc_upsells');
delete_site_option('wc_pdc_upsells');
delete_option('wc_pdc_related');
delete_site_option('wc_pdc_related');
delete_option('wc_pdc_tabs');
delete_site_option('wc_pdc_tabs');

