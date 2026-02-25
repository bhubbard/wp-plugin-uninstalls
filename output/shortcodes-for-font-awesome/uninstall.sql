-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scfa-asset-type', 'scfa-default-style', 'scfa-asset-url', 'scfa-remove-settings');

