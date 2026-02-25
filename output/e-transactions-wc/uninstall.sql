-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_etransactions_account_environment', 'woocommerce_etransactions_std_env', 'woocommerce_etransactions_std_settings', 'woocommerce_etransactions_std_test_settings', 'wc_etransaction_active_plugins', 'wc_etransaction_inactive_plugins');

