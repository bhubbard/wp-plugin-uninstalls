-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_appihw_hide_add_to_cart_button', '_appihw_hide_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_appihw_hide_add_to_cart_button', '_appihw_hide_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_appihw_hide_add_to_cart_button', '_appihw_hide_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_appihw_hide_add_to_cart_button', '_appihw_hide_price');

