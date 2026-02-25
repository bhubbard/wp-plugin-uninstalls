-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rio_settings', 'lang_emi_calc_BackupLink', 'lang_emi_calc_BackupText');

