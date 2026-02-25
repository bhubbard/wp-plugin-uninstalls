-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_greenpay_version', 'woocommerce_greenpay_settings', 'greenpay_dismissed_migration_token', 'greenpay_token_migration', 'greenpay_dismissed_gp_webhook_tokenization', 'greenpay_dismissed_gp_webhook', 'woocommerce_prices_include_tax');
DELETE FROM wp_options WHERE option_name LIKE 'greenpay_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('card', 'greenpay_token_updated', 'greenpay_credix_quote', 'greenpay_authorization_number', 'greenpay_webhook_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('card', 'greenpay_token_updated', 'greenpay_credix_quote', 'greenpay_authorization_number', 'greenpay_webhook_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('card', 'greenpay_token_updated', 'greenpay_credix_quote', 'greenpay_authorization_number', 'greenpay_webhook_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('card', 'greenpay_token_updated', 'greenpay_credix_quote', 'greenpay_authorization_number', 'greenpay_webhook_response');

