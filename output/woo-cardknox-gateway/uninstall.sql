-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_cardknox_settings', 'woocommerce_force_ssl_checkout', 'wc_cardknox_version', 'woocommerce_cardknox-googlepay_settings', 'woocommerce_cardknox-applepay_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cardknox_token', '_cardknox_masked_card', '_cardknox_cardtype', '_cardknox_xrefnum', '_cardknox_transaction_captured', '_transaction_id', 'billing_email', '_payment_method', 'Sola Payment ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cardknox_token', '_cardknox_masked_card', '_cardknox_cardtype', '_cardknox_xrefnum', '_cardknox_transaction_captured', '_transaction_id', 'billing_email', '_payment_method', 'Sola Payment ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cardknox_token', '_cardknox_masked_card', '_cardknox_cardtype', '_cardknox_xrefnum', '_cardknox_transaction_captured', '_transaction_id', 'billing_email', '_payment_method', 'Sola Payment ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cardknox_token', '_cardknox_masked_card', '_cardknox_cardtype', '_cardknox_xrefnum', '_cardknox_transaction_captured', '_transaction_id', 'billing_email', '_payment_method', 'Sola Payment ID');

