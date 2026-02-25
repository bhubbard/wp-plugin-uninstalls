<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppc_product_type');
delete_site_option('ppc_product_type');
delete_option('ppc_promotion_label');
delete_site_option('ppc_promotion_label');
delete_option('ppc_selected_category');
delete_site_option('ppc_selected_category');
delete_option('ppc_order_by');
delete_site_option('ppc_order_by');
delete_option('ppc_order_sorting');
delete_site_option('ppc_order_sorting');
delete_option('ppc_columns_count');
delete_site_option('ppc_columns_count');
delete_option('ppc_product_limit');
delete_site_option('ppc_product_limit');

