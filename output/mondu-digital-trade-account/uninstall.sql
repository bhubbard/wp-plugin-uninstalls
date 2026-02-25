-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mondu_trade_account_options', '_mondu_trade_webhooks_registered', '_mondu_trade_webhooks_secret');

