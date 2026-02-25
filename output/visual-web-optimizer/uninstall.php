<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ignore_js');
delete_site_option('ignore_js');
delete_option('vwo_id');
delete_site_option('vwo_id');
delete_option('code_type');
delete_site_option('code_type');
delete_option('vwo_clicks');
delete_site_option('vwo_clicks');
delete_option('settings_tolerance');
delete_site_option('settings_tolerance');
delete_option('library_tolerance');
delete_site_option('library_tolerance');
delete_option('use_existing_jquery');
delete_site_option('use_existing_jquery');
delete_option('enable_woocommerce_event_tracking');
delete_site_option('enable_woocommerce_event_tracking');
delete_option('track_product_view');
delete_site_option('track_product_view');
delete_option('track_add_to_cart');
delete_site_option('track_add_to_cart');
delete_option('track_remove_from_cart');
delete_site_option('track_remove_from_cart');
delete_option('track_checkout');
delete_site_option('track_checkout');
delete_option('track_purchase');
delete_site_option('track_purchase');
delete_option('vwo_server_side_tracking');
delete_site_option('vwo_server_side_tracking');
delete_option('vwo_coll_url');
delete_site_option('vwo_coll_url');

