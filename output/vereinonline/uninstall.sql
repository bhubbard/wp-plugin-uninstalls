-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vereinonline_setting_url', 'vereinonline_setting_usr', 'vereinonline_setting_pwd', 'vereinonline_setting_web', 'vereinonline_setting_ath', 'vereinonline_setting_scr', 'vereinonline_setting_api');

