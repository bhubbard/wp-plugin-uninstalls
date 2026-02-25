-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fetch-shop-btn-show-always', 'shopstyle-api-key', 'fetch-account', 'fetch-position-vertical', 'fetch-position-horizontal', 'fetch-show-home-feed', 'fetch-paypal-email', 'frenzy-username', 'fetch-paypal-settings-status', 'fetch-paypal-payout-status', 'fetch-payouts', 'frenzy-settings-status', 'fetch-check-payout-status', 'indi-commissions', 'fetch-indi-commissions-details', 'fetch-indi-payouts', 'fetch-indi-commissions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fetch_in_progress', 'frenzy-duration', 'frenzy-response', 'fetch_show_shop_button', 'fetch_post_settings', 'fetch_product_data', 'is_manual', 'frenzy-enabled', 'frenzy-deleted-products', 'frenzy-shopstyle-added-products');
DELETE FROM wp_usermeta WHERE meta_key IN ('fetch_in_progress', 'frenzy-duration', 'frenzy-response', 'fetch_show_shop_button', 'fetch_post_settings', 'fetch_product_data', 'is_manual', 'frenzy-enabled', 'frenzy-deleted-products', 'frenzy-shopstyle-added-products');
DELETE FROM wp_termmeta WHERE meta_key IN ('fetch_in_progress', 'frenzy-duration', 'frenzy-response', 'fetch_show_shop_button', 'fetch_post_settings', 'fetch_product_data', 'is_manual', 'frenzy-enabled', 'frenzy-deleted-products', 'frenzy-shopstyle-added-products');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fetch_in_progress', 'frenzy-duration', 'frenzy-response', 'fetch_show_shop_button', 'fetch_post_settings', 'fetch_product_data', 'is_manual', 'frenzy-enabled', 'frenzy-deleted-products', 'frenzy-shopstyle-added-products');

