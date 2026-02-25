-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DWPUA_activated_on', 'DWPUA_deactivated_on');

