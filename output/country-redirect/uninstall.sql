-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cntrd_whitelist_ip', 'cntrd_whitelist_bot', 'cntrd_engine_sxgeo', 'cntrd_engine_geoip2', 'cntrd_engine_ipapi', 'cntrd_version', 'cntrd-activation-notice');
DELETE FROM wp_options WHERE option_name LIKE 'cntrd_redirect_%';

