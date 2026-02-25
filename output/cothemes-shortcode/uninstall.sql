-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ctsc_option_hotkey');
DELETE FROM wp_options WHERE option_name LIKE 'ctsc_presets_%';

