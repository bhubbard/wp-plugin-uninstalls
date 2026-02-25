-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TNDRESL_grs_api_key', 'TNDRESL_grs_place_id', 'TRONRESL_grs_api_key', 'TRONRESL_grs_place_id');

