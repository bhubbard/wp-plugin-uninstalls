<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dashify_on');
delete_site_option('dashify_on');
delete_option('dashify_dismissed_release_notices_forever');
delete_site_option('dashify_dismissed_release_notices_forever');
delete_option('dashify_dismissed_notices');
delete_site_option('dashify_dismissed_notices');
delete_option('dashify_analytics_range');
delete_site_option('dashify_analytics_range');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('dashify_line_item_menu_order_column_enabled');
delete_site_option('dashify_line_item_menu_order_column_enabled');
delete_option('dashify_line_item_menu_order_column_default_sort');
delete_site_option('dashify_line_item_menu_order_column_default_sort');
delete_option('dashify_list_table_open_search_and_filter_by_default');
delete_site_option('dashify_list_table_open_search_and_filter_by_default');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('dashify_migrated_order_edit_meta_box_layout_to_user_meta');
delete_site_option('dashify_migrated_order_edit_meta_box_layout_to_user_meta');
delete_option('dashify_migrated_subscription_edit_meta_box_layout_to_user_meta');
delete_site_option('dashify_migrated_subscription_edit_meta_box_layout_to_user_meta');
delete_option('dashify_navigation_enabled');
delete_site_option('dashify_navigation_enabled');
delete_option('udb_modules');
delete_site_option('udb_modules');

