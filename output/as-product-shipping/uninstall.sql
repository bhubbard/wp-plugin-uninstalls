-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_asprsh_custom_shipping_enabled', '_asprsh_shipping_type', '_asprsh_custom_shipping_rate', '_asprsh_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('_asprsh_custom_shipping_enabled', '_asprsh_shipping_type', '_asprsh_custom_shipping_rate', '_asprsh_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('_asprsh_custom_shipping_enabled', '_asprsh_shipping_type', '_asprsh_custom_shipping_rate', '_asprsh_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_asprsh_custom_shipping_enabled', '_asprsh_shipping_type', '_asprsh_custom_shipping_rate', '_asprsh_weight');

