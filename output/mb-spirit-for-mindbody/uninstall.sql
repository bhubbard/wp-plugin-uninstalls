-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mb_spirit_options', 'MB_SPIRIT_SETTINGS_INFO');

