-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcs_sd', 'wpcs_sd_max', 'wpcs_settings', 'wpcs_first_activation', 'wpcs_geo_rules', 'wpcs', 'wpcs_manage_rate_alert', 'wpcs_show_money_signs');
DELETE FROM wp_options WHERE option_name LIKE 'wpcs_sd_%';

