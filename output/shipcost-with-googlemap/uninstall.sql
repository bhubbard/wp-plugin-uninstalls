-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_google_map_control_component', 'plugin_google_map_route_setting', 'plugin_google_map_style_setting', 'plugin_google_map_api_key', 'plugin_google_map_counttype_setting', 'plugin_google_map_base_price', 'plugin_google_map_base_distance', 'plugin_google_map_extra_price', 'plugin_google_map_extra_distance', 'plugin_google_map_base_time_price', 'plugin_google_map_base_time_distance', 'plugin_google_map_extra_time_price', 'plugin_google_map_extra_time_distance', 'plugin_google_map_formstyle-fontcolor', 'plugin_google_map_formstyle-backgroundcolor', 'plugin_google_map_ecpay_hashkey', 'plugin_google_map_ecpay_hashIV', 'plugin_google_map_ecpay_merchantID', 'plugin_google_map_ecpay_orderNm', 'plugin_google_map_ecpay_returnUrl', 'plugin_google_map_ecpay_responceUrl');

