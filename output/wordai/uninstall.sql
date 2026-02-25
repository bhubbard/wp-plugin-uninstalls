-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sftcy-wordai-content-settings-data', 'sftcy-wordai-apisettings-data', 'sftcy-wordai-image-settings-data');

