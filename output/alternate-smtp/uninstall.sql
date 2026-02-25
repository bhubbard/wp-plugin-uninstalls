-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bvsmtp_smpt_global_settings', 'bvopt_smpt_alt_setting_1', 'bvsmtp_smpt_alt_setting_2', 'bvsmtp_smpt_alt_setting_3', 'bvsmtp_smpt_alt_setting_1');

