-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acfcs_version', 'acfcs_db_version', 'acfcs_city_update_1_8_0', 'current_theme', 'charset', 'registration', 'b3_registration_type', 'acfcs_delete_cities_table', 'acfcs_city_update_1_8_0_be', 'acfcs_city_update_1_8_0_nl', 'acf_version');
DELETE FROM wp_options WHERE option_name LIKE 'acfcs_city_update_1_8_0_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('acfcs_search_country', 'acfcs_search_state', 'acfcs_search_city');
DELETE FROM wp_usermeta WHERE meta_key IN ('acfcs_search_country', 'acfcs_search_state', 'acfcs_search_city');
DELETE FROM wp_termmeta WHERE meta_key IN ('acfcs_search_country', 'acfcs_search_state', 'acfcs_search_city');
DELETE FROM wp_commentmeta WHERE meta_key IN ('acfcs_search_country', 'acfcs_search_state', 'acfcs_search_city');

