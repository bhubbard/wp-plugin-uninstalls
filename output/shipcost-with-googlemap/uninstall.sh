#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_google_map_control_component'
wp option delete 'plugin_google_map_route_setting'
wp option delete 'plugin_google_map_style_setting'
wp option delete 'plugin_google_map_api_key'
wp option delete 'plugin_google_map_counttype_setting'
wp option delete 'plugin_google_map_base_price'
wp option delete 'plugin_google_map_base_distance'
wp option delete 'plugin_google_map_extra_price'
wp option delete 'plugin_google_map_extra_distance'
wp option delete 'plugin_google_map_base_time_price'
wp option delete 'plugin_google_map_base_time_distance'
wp option delete 'plugin_google_map_extra_time_price'
wp option delete 'plugin_google_map_extra_time_distance'
wp option delete 'plugin_google_map_formstyle-fontcolor'
wp option delete 'plugin_google_map_formstyle-backgroundcolor'
wp option delete 'plugin_google_map_ecpay_hashkey'
wp option delete 'plugin_google_map_ecpay_hashIV'
wp option delete 'plugin_google_map_ecpay_merchantID'
wp option delete 'plugin_google_map_ecpay_orderNm'
wp option delete 'plugin_google_map_ecpay_returnUrl'
wp option delete 'plugin_google_map_ecpay_responceUrl'

