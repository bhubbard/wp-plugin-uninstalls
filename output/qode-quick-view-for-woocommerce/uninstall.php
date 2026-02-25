<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qode_quick_view_for_woocommerce_framework_permalinks');
delete_site_option('qode_quick_view_for_woocommerce_framework_permalinks');
delete_option('qode_quick_view_for_woocommerce_framework_permalinks_updated');
delete_site_option('qode_quick_view_for_woocommerce_framework_permalinks_updated');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

