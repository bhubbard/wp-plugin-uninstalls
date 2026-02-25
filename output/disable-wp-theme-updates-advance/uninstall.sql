-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('DWTUA_activated_on', 'DWTUA_deactivated_on');

