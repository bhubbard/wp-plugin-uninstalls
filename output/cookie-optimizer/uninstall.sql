-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookie_opt_banner_active', 'cookie_opt_id', 'cookie_opt_do_not_sell_page', 'cookie_opt_first_setting', 'cookie_opt_statistics', 'cookie_opt_geolocation_setting', 'cookie_opt_version', 'cookie_opt_views', 'cookie_opt_deactivation', 'msg-cookie-opt', 'validate-err', 'successUpdate', 'packageUser', 'successDelate', 'errorsForUpdate', 'errorsForCreate', 'successCreate');

