-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kgr-cookie-duration-long', 'kgr-cookie-duration-short');

