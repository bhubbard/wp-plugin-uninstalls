-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('combar_sab_buttons', 'combar_sab_setting_desk', 'combar_sab_general_setting', 'combar_sab_setting_mob');

