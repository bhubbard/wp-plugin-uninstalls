-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ceneje_shop_id', 'ceneje_badge_enabled', 'ceneje_popup_enabled', 'ceneje_floater_enabled', 'ceneje_xml_url', 'ceneje_exclude_out_of_stock', 'ceneje_gender_attribute', 'ceneje_color_attribute', 'ceneje_size_attribute', 'ceneje_agegroup_attribute', 'ceneje_brand_attribute', 'ceneje_delivery_cost', 'ceneje_free_delivery_above', 'ceneje_delivery_time_min', 'ceneje_delivery_time_max', 'ceneje_popup_page');

