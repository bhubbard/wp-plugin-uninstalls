-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scbcfw_shipping_class_column');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scbcfw_shipping_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('scbcfw_shipping_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('scbcfw_shipping_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scbcfw_shipping_class');

