-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hp_geolocation_max_zoom', 'hp_geolocation_hide_address', 'hp_geolocation_models', 'hp_geolocation_region_types', 'hp_geolocation_provider', 'hp_geolocation_countries', 'hp_geolocation_radius', 'hp_geolocation_use_miles', 'hp_geolocation_generate_regions', 'hp_mapbox_api_key', 'hp_gmaps_api_key', 'hp_gmaps_use_legacy_api', 'hp_mapbox_secret_key', 'hp_gmaps_secret_key', 'hp_installed_time', 'hp_listing_related_criteria', 'hp_geolocation_enable_sorting', 'hp_geolocation_allow_radius', 'hp_geolocation_max_radius', 'hp_geolocation_address_format');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hp_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('hp_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('hp_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hp_code');

