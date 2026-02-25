-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csl_map_api_key', 'csl_map_default_radius', 'csl_include_cat', 'csl_include_title', 'csl_map_type', 'csl_custom_map_marker', 'csl_location_default_sorting', 'csl_map_layout', 'csl_primary_color', 'csl_primary_color_dark', 'csl_secondary_color', 'csl_secondary_color_light', 'csl_fullwidth_include_loc', 'csl_autocompletesearchbox', 'csl_country_restriction', 'csl_distance_units', 'csl_map_default_zoom', 'csl_disable_clustermarker', 'csl_hide_phone', 'csl_hide_email', 'csl_hide_fax', 'csl_hide_website', 'csl_hide_hours');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('websiteurl', 'business_phone_number', 'business_fax', 'business_contact_email', 'business_address', 'business_zip_code', 'business_latitude', 'business_longitude', 'business_storehours', 'category_marker');
DELETE FROM wp_usermeta WHERE meta_key IN ('websiteurl', 'business_phone_number', 'business_fax', 'business_contact_email', 'business_address', 'business_zip_code', 'business_latitude', 'business_longitude', 'business_storehours', 'category_marker');
DELETE FROM wp_termmeta WHERE meta_key IN ('websiteurl', 'business_phone_number', 'business_fax', 'business_contact_email', 'business_address', 'business_zip_code', 'business_latitude', 'business_longitude', 'business_storehours', 'category_marker');
DELETE FROM wp_commentmeta WHERE meta_key IN ('websiteurl', 'business_phone_number', 'business_fax', 'business_contact_email', 'business_address', 'business_zip_code', 'business_latitude', 'business_longitude', 'business_storehours', 'category_marker');

