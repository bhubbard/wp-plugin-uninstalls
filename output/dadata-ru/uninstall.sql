-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dadata_api_key', 'dadata_woo_off', 'dadata_use_mask', 'dadata_locations', 'dadata_count_r', 'dadata_hint', 'dadata_minchars');

