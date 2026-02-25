-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpll_pickup_lcoation_name', '_wpll_pickup_date', '_wpll_pickup_lcoation_id', 'wlpp_shipping_cost', '_wlpp_exclude_location', 'wlpp_ship_cost_category', 'wlpp_ship_cost_type', 'wlpp_address', 'wlpp_city', 'wlpp_phone', 'wlpp_location_order_email', 'wlpp_enable_order_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpll_pickup_lcoation_name', '_wpll_pickup_date', '_wpll_pickup_lcoation_id', 'wlpp_shipping_cost', '_wlpp_exclude_location', 'wlpp_ship_cost_category', 'wlpp_ship_cost_type', 'wlpp_address', 'wlpp_city', 'wlpp_phone', 'wlpp_location_order_email', 'wlpp_enable_order_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpll_pickup_lcoation_name', '_wpll_pickup_date', '_wpll_pickup_lcoation_id', 'wlpp_shipping_cost', '_wlpp_exclude_location', 'wlpp_ship_cost_category', 'wlpp_ship_cost_type', 'wlpp_address', 'wlpp_city', 'wlpp_phone', 'wlpp_location_order_email', 'wlpp_enable_order_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpll_pickup_lcoation_name', '_wpll_pickup_date', '_wpll_pickup_lcoation_id', 'wlpp_shipping_cost', '_wlpp_exclude_location', 'wlpp_ship_cost_category', 'wlpp_ship_cost_type', 'wlpp_address', 'wlpp_city', 'wlpp_phone', 'wlpp_location_order_email', 'wlpp_enable_order_email');

