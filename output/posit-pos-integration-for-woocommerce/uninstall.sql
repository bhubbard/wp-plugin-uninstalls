-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('last_inventory_update', 'plz_update_pos_bo_setting');

