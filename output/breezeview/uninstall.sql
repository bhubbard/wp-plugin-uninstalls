-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'bv_gr_api_key', 'bv_gr_place_id');

