-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hexometer-property-token', 'hexometer-property-disable-auto-fix', 'hexometer_last_scan');

