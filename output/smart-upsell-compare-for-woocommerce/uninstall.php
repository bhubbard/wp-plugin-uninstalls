<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('no_exists_value');
delete_site_option('no_exists_value');
delete_option('wc_settings_tab_smart_upsell_compare_wcsuc_enabled');
delete_site_option('wc_settings_tab_smart_upsell_compare_wcsuc_enabled');
delete_option('wc_settings_tab_smart_upsell_compare_wcsuc_product');
delete_site_option('wc_settings_tab_smart_upsell_compare_wcsuc_product');
delete_option('wc_settings_tab_smart_upsell_compare_wcsuc_product_cp');
delete_site_option('wc_settings_tab_smart_upsell_compare_wcsuc_product_cp');

