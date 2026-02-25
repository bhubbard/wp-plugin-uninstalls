-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hinagata_sb_presets', 'hinagata_sb_settings', 'hinagata_sb_template');

