-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpm_tat_options', 'tat_options', 'tat_settings_cache');

