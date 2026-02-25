-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optifileSettings', 'optifileSettingsT4', 'optifileSettingsT3', 'optifileSettingsT2');

