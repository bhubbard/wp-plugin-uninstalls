<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tgpc_gift_wrapper_enabled');
delete_site_option('tgpc_gift_wrapper_enabled');
delete_option('tgpc_gift_wrapper_location');
delete_site_option('tgpc_gift_wrapper_location');
delete_option('tgpc_gift_wrapper_checkbox_label');
delete_site_option('tgpc_gift_wrapper_checkbox_label');
delete_option('tgpc_gift_wrapper_cost');
delete_site_option('tgpc_gift_wrapper_cost');
delete_option('tgpc_gift_wrapper_cost_tax_status');
delete_site_option('tgpc_gift_wrapper_cost_tax_status');
delete_option('tgpc_gift_wrapper_tax_class');
delete_site_option('tgpc_gift_wrapper_tax_class');

