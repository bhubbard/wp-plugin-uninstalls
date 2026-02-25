<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_google_map_control_component');
delete_site_option('plugin_google_map_control_component');
delete_option('plugin_google_map_route_setting');
delete_site_option('plugin_google_map_route_setting');
delete_option('plugin_google_map_style_setting');
delete_site_option('plugin_google_map_style_setting');
delete_option('plugin_google_map_api_key');
delete_site_option('plugin_google_map_api_key');
delete_option('plugin_google_map_counttype_setting');
delete_site_option('plugin_google_map_counttype_setting');
delete_option('plugin_google_map_base_price');
delete_site_option('plugin_google_map_base_price');
delete_option('plugin_google_map_base_distance');
delete_site_option('plugin_google_map_base_distance');
delete_option('plugin_google_map_extra_price');
delete_site_option('plugin_google_map_extra_price');
delete_option('plugin_google_map_extra_distance');
delete_site_option('plugin_google_map_extra_distance');
delete_option('plugin_google_map_base_time_price');
delete_site_option('plugin_google_map_base_time_price');
delete_option('plugin_google_map_base_time_distance');
delete_site_option('plugin_google_map_base_time_distance');
delete_option('plugin_google_map_extra_time_price');
delete_site_option('plugin_google_map_extra_time_price');
delete_option('plugin_google_map_extra_time_distance');
delete_site_option('plugin_google_map_extra_time_distance');
delete_option('plugin_google_map_formstyle-fontcolor');
delete_site_option('plugin_google_map_formstyle-fontcolor');
delete_option('plugin_google_map_formstyle-backgroundcolor');
delete_site_option('plugin_google_map_formstyle-backgroundcolor');
delete_option('plugin_google_map_ecpay_hashkey');
delete_site_option('plugin_google_map_ecpay_hashkey');
delete_option('plugin_google_map_ecpay_hashIV');
delete_site_option('plugin_google_map_ecpay_hashIV');
delete_option('plugin_google_map_ecpay_merchantID');
delete_site_option('plugin_google_map_ecpay_merchantID');
delete_option('plugin_google_map_ecpay_orderNm');
delete_site_option('plugin_google_map_ecpay_orderNm');
delete_option('plugin_google_map_ecpay_returnUrl');
delete_site_option('plugin_google_map_ecpay_returnUrl');
delete_option('plugin_google_map_ecpay_responceUrl');
delete_site_option('plugin_google_map_ecpay_responceUrl');

