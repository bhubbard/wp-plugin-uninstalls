-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zeevou_access_token', 'zeevou_refresh_token', 'zeevou_url', 'zeevou_city_name', 'zeevou_city_radio', 'zeevou_border_radius', 'zeevou_align_radio', 'zeevou_max_width', 'zeevou_default_acc_duration', 'zeevou_default_adults_no', 'zeevou_default_children_no', 'zeevou_default_infants_no', 'zeevou_plugin_version', 'zeevou_token_date');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zeevou_brand', 'zeevou_page_url', 'zeevou_property', 'zv-property-metabox-content', 'zv-metabox-property-name-content', 'zeevou_property_id', 'zeevou_brand_page', 'zeevou_property_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('zeevou_brand', 'zeevou_page_url', 'zeevou_property', 'zv-property-metabox-content', 'zv-metabox-property-name-content', 'zeevou_property_id', 'zeevou_brand_page', 'zeevou_property_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('zeevou_brand', 'zeevou_page_url', 'zeevou_property', 'zv-property-metabox-content', 'zv-metabox-property-name-content', 'zeevou_property_id', 'zeevou_brand_page', 'zeevou_property_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zeevou_brand', 'zeevou_page_url', 'zeevou_property', 'zv-property-metabox-content', 'zv-metabox-property-name-content', 'zeevou_property_id', 'zeevou_brand_page', 'zeevou_property_page');

