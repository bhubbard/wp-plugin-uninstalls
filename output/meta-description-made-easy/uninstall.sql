-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MEDME-setting', 'MEDME-setting-1', 'MEDME-setting-2', 'MEDME-setting-3', 'MEDME-setting-4', 'MEDME-setting-5', 'MEDME-setting-6');

