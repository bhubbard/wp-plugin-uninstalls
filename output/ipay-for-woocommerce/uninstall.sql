-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('is_ipg_mode_enabled', 'ipay_gw_sec', 'ipay_global_gw_wc_api_string');

