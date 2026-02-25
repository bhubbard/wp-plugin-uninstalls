-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('robonobo_weight_rates', 'robonobo_api_key', 'robonobo_api_secret', 'robonobo_max_hour_for_today_delivery', 'robonobo_webhook_password', 'robonobo_company_name', 'robonobo_login', 'robonobo_secret', 'robonobo_company_address');

