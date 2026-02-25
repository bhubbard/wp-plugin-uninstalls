-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('repofole_apikey', 'repofole_access_allowed', 'repofole_dwnitem', 'repofole_donumber');

