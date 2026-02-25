-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_gift_card_plugin_version', 'woocommerce_email_from_name', 'woocommerce_email_from_address', 'woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('use_gift_balance', 'last_redeemed_gift_codes');
DELETE FROM wp_usermeta WHERE meta_key IN ('use_gift_balance', 'last_redeemed_gift_codes');
DELETE FROM wp_termmeta WHERE meta_key IN ('use_gift_balance', 'last_redeemed_gift_codes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('use_gift_balance', 'last_redeemed_gift_codes');

