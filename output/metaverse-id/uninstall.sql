-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mv-id::EVE', 'mv-id::use::HTTP API');
DELETE FROM wp_options WHERE option_name LIKE 'mv-id::%';

