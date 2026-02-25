-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gwaa_country_code', 'gwaa_address_option', 'gwaa_place_types', 'gwaa_enable_map', 'gwaa_cf7_geo_api_key', 'gwaa_tr_enter_loc', 'gwaa_tr_apartment', 'gwaa_tr_city', 'gwaa_tr_state', 'gwaa_tr_postalcode', 'gwaa_tr_country', 'gwaa_cf7_geo_gpa_page');

