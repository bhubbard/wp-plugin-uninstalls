<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppsas_general_settings');
delete_site_option('ppsas_general_settings');
delete_option('ppsas_popup_settings');
delete_site_option('ppsas_popup_settings');
delete_option('ppsas_page_option_settings');
delete_site_option('ppsas_page_option_settings');
delete_option('ppsas_product_option_settings');
delete_site_option('ppsas_product_option_settings');
delete_option('ppsas_global_options');
delete_site_option('ppsas_global_options');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

