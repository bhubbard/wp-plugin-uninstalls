-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lfdl_gmap_api', 'lfdl_custom_markers', 'lfdl_url', 'lfdl_all_lstngs_page', 'lfdl_all_cities', 'lfdl_all_zip_codes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('property_attachment_ids', 'property_lease', 'property_lat', 'property_long', 'property_city', 'property_zip', 'property_id', 'property_rent', 'property_market_rent', 'property_baths', 'property_beds', 'property_sq_ft', 'property_availability', 'property_apply_link', 'property_phn_no', 'property_email', 'property_amenities', 'property_bedsbeds');
DELETE FROM wp_usermeta WHERE meta_key IN ('property_attachment_ids', 'property_lease', 'property_lat', 'property_long', 'property_city', 'property_zip', 'property_id', 'property_rent', 'property_market_rent', 'property_baths', 'property_beds', 'property_sq_ft', 'property_availability', 'property_apply_link', 'property_phn_no', 'property_email', 'property_amenities', 'property_bedsbeds');
DELETE FROM wp_termmeta WHERE meta_key IN ('property_attachment_ids', 'property_lease', 'property_lat', 'property_long', 'property_city', 'property_zip', 'property_id', 'property_rent', 'property_market_rent', 'property_baths', 'property_beds', 'property_sq_ft', 'property_availability', 'property_apply_link', 'property_phn_no', 'property_email', 'property_amenities', 'property_bedsbeds');
DELETE FROM wp_commentmeta WHERE meta_key IN ('property_attachment_ids', 'property_lease', 'property_lat', 'property_long', 'property_city', 'property_zip', 'property_id', 'property_rent', 'property_market_rent', 'property_baths', 'property_beds', 'property_sq_ft', 'property_availability', 'property_apply_link', 'property_phn_no', 'property_email', 'property_amenities', 'property_bedsbeds');

