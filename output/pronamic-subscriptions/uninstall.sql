-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pronamic_subscription_role', '_pronamic_subscription_price', '_pronamic_subscription_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pronamic_subscription_role', '_pronamic_subscription_price', '_pronamic_subscription_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pronamic_subscription_role', '_pronamic_subscription_price', '_pronamic_subscription_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pronamic_subscription_role', '_pronamic_subscription_price', '_pronamic_subscription_id');

