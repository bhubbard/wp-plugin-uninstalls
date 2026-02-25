-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_discount-payment-moona_settings', 'moona_disable_cache_until_timestamp');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mship', '_sale_price', '_moona_id', '_url_to_redirect', '_transfer_group', '_has_moona_discount', '_moona_discount_amount', '_moona_user_id', '_transaction_id', '_is_paid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mship', '_sale_price', '_moona_id', '_url_to_redirect', '_transfer_group', '_has_moona_discount', '_moona_discount_amount', '_moona_user_id', '_transaction_id', '_is_paid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mship', '_sale_price', '_moona_id', '_url_to_redirect', '_transfer_group', '_has_moona_discount', '_moona_discount_amount', '_moona_user_id', '_transaction_id', '_is_paid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mship', '_sale_price', '_moona_id', '_url_to_redirect', '_transfer_group', '_has_moona_discount', '_moona_discount_amount', '_moona_user_id', '_transaction_id', '_is_paid');

