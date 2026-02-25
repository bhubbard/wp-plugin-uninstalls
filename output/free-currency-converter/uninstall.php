<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('frcc_exchange_rates');
delete_site_option('frcc_exchange_rates');
delete_option('frcc_selected_currencies');
delete_site_option('frcc_selected_currencies');
delete_option('frcc_show_flag');
delete_site_option('frcc_show_flag');
delete_option('frcc_show_symbol');
delete_site_option('frcc_show_symbol');
delete_option('frcc_show_name');
delete_site_option('frcc_show_name');
delete_option('frcc_show_value');
delete_site_option('frcc_show_value');
delete_option('frcc_display_format_order');
delete_site_option('frcc_display_format_order');
delete_option('frcc_box_width');
delete_site_option('frcc_box_width');
delete_option('frcc_box_height');
delete_site_option('frcc_box_height');
delete_option('frcc_last_sync');
delete_site_option('frcc_last_sync');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('frcc_default_currency');
delete_site_option('frcc_default_currency');

// Delete Transients
delete_transient('frcc_show_review_notice');
delete_site_transient('frcc_show_review_notice');

