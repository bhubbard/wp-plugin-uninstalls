-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zpmfc_phone', 'zpmfc_pos', 'zpmfc_color', 'zpmfc_text');

