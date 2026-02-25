-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_evereye_api_key', 'wc_settings_evereye_api_login', 'redirect_page', 'my_option_name');
DELETE FROM wp_options WHERE option_name LIKE '%_api_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_api_login';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_disable_cron';
DELETE FROM wp_options WHERE option_name LIKE '%_run_cron_every';
DELETE FROM wp_options WHERE option_name LIKE '%_order_limit_day';
DELETE FROM wp_options WHERE option_name LIKE '%_api_cancel_orders';
DELETE FROM wp_options WHERE option_name LIKE '%_changestatus_orders2';
DELETE FROM wp_options WHERE option_name LIKE '%_skip_payment_method';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method');

