-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_giftwallet_store_credit', '_giftwallet_is_gift_credit', '_giftwallet_allow_custom_amount', '_giftwallet_min_amount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_giftwallet_store_credit', '_giftwallet_is_gift_credit', '_giftwallet_allow_custom_amount', '_giftwallet_min_amount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_giftwallet_store_credit', '_giftwallet_is_gift_credit', '_giftwallet_allow_custom_amount', '_giftwallet_min_amount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_giftwallet_store_credit', '_giftwallet_is_gift_credit', '_giftwallet_allow_custom_amount', '_giftwallet_min_amount');

