-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpademoji_setting_opt', 'tpademoji_checkver_stamp');

