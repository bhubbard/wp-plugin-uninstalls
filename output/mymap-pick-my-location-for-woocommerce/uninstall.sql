-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mymap_checkbox', 'mymap_color_picker', 'mymap_api_key', 'mymap_checkbox_billing', 'mymap_checkbox_shipping', 'mymap_location_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mymap_location_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('mymap_location_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('mymap_location_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mymap_location_url');

