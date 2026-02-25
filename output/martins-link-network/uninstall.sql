-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('martinslinknetwork_version', 'martinslinknetwork_key');

