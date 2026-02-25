-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('carrotquest_api_key', 'carrotquest_api_secret', 'carrotquest_auth_key', 'carrotquest_auth');
DELETE FROM wp_options WHERE option_name LIKE 'carrotquest_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'shipping_first_name', 'shipping_last_name', 'billing_phone', 'billing_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'shipping_first_name', 'shipping_last_name', 'billing_phone', 'billing_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'shipping_first_name', 'shipping_last_name', 'billing_phone', 'billing_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'shipping_first_name', 'shipping_last_name', 'billing_phone', 'billing_email');

