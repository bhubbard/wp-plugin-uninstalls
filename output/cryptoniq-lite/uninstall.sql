-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cryptoniq_pay_txlist', 'woocommerce_hold_stock_minutes', 'woocommerce_manage_stock', 'cryptoniq_currency_prices', 'cryptoniq_coin_prices', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cryptoniq_time_start');
DELETE FROM wp_usermeta WHERE meta_key IN ('cryptoniq_time_start');
DELETE FROM wp_termmeta WHERE meta_key IN ('cryptoniq_time_start');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cryptoniq_time_start');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

