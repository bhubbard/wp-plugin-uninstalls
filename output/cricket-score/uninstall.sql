-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fscore_cricket_settings_options', 'fscore_crecket_settings_options');

