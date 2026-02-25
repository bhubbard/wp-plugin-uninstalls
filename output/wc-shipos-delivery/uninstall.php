<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dvsfw_shipos_token');
delete_site_option('dvsfw_shipos_token');
delete_option('dvsfw_getpackage_license');
delete_site_option('dvsfw_getpackage_license');
delete_option('wc-shipos-delivery');
delete_site_option('wc-shipos-delivery');
delete_option('dvsfw_order_comment_field_key');
delete_site_option('dvsfw_order_comment_field_key');
delete_option('dvsfw_use_order_notes');
delete_site_option('dvsfw_use_order_notes');
delete_option('dvsfw_phone_no_field_key');
delete_site_option('dvsfw_phone_no_field_key');
delete_option('dvsfw_house_no_field_key');
delete_site_option('dvsfw_house_no_field_key');
delete_option('dvsfw_apartment_field_key');
delete_site_option('dvsfw_apartment_field_key');
delete_option('dvsfw_floor_field_key');
delete_site_option('dvsfw_floor_field_key');
delete_option('dvsfw_entrance_field_key');
delete_site_option('dvsfw_entrance_field_key');
delete_option('dvsfw_google_maps_api_key');
delete_site_option('dvsfw_google_maps_api_key');
delete_option('dvsfw_is_pickup	');
delete_site_option('dvsfw_is_pickup	');
delete_option('dvsfw_dev_mode');
delete_site_option('dvsfw_dev_mode');
delete_option('dvsfw_auto_update_order_status_on_shipment_delivered');
delete_site_option('dvsfw_auto_update_order_status_on_shipment_delivered');
delete_option('dvsfw_auto_update_order_status_on_shipment_delivered_source');
delete_site_option('dvsfw_auto_update_order_status_on_shipment_delivered_source');
delete_option('dvsfw_auto_update_order_status_on_shipment_delivered_target');
delete_site_option('dvsfw_auto_update_order_status_on_shipment_delivered_target');
delete_option('dvsfw_shipping_method_status_mappings');
delete_site_option('dvsfw_shipping_method_status_mappings');
delete_option('dvsfw_license_key');
delete_site_option('dvsfw_license_key');
delete_option('dvsfw_is_pickup');
delete_site_option('dvsfw_is_pickup');
delete_option('dvsfw_pickup_point_display_preference');
delete_site_option('dvsfw_pickup_point_display_preference');
delete_option('dvsfw_pickup_point_default_display');
delete_site_option('dvsfw_pickup_point_default_display');
delete_option('dvsfw_automatic');
delete_site_option('dvsfw_automatic');
delete_option('dvsfw_getpackage_enable');
delete_site_option('dvsfw_getpackage_enable');
delete_option('dvsfw_zigzag_enable_express_delivery');
delete_site_option('dvsfw_zigzag_enable_express_delivery');
delete_option('dvsfw_zigzag_license');
delete_site_option('dvsfw_zigzag_license');
delete_option('dvsfw_free_shipping_by_price');
delete_site_option('dvsfw_free_shipping_by_price');
delete_option('dvsfw_automatic_status');
delete_site_option('dvsfw_automatic_status');
delete_option('dvsfw_woltdrive_enable');
delete_site_option('dvsfw_woltdrive_enable');
delete_option('dvsfw_woltDrive_license');
delete_site_option('dvsfw_woltDrive_license');
delete_option('dvsfw_install_date');
delete_site_option('dvsfw_install_date');

// Delete Transients
delete_transient('DVSFW_GET_LICENSES');
delete_site_transient('DVSFW_GET_LICENSES');
delete_transient('DVSFW_HAS_LICENSE');
delete_site_transient('DVSFW_HAS_LICENSE');
delete_transient('dvsfw_cache_cleared_notice');
delete_site_transient('dvsfw_cache_cleared_notice');

// Clear Cron Jobs
wp_clear_scheduled_hook('dvsfw_get_location_daily');

