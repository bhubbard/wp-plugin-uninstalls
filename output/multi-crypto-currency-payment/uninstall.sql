-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_mccp_settings', 'woocommerce_mccp_account', 'woocommerce_mccp_secret', 'woocommerce_mccp_wallets', 'mccp_db_version');

