-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wolf_pushy_id', 'wolf_id_list', 'wolf_api_id');

