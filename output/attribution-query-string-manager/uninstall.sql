-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aqsm-cookie-life', 'aqsm-allowableFields', 'aqsm-targetURLs');

