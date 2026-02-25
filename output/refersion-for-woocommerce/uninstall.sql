-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('refersion_settings', 'refersion_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', '_subscription_type', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', '_subscription_type', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', '_subscription_type', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', '_subscription_type', '_subscription_price', '_subscription_period', '_subscription_period_interval', '_subscription_sign_up_fee');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name';

