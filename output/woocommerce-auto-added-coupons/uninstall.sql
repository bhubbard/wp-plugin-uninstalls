-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wjecf_shipping_restrictions', '_wjecf_excluded_shipping_restrictions');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wjecf_shipping_restrictions', '_wjecf_excluded_shipping_restrictions');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wjecf_shipping_restrictions', '_wjecf_excluded_shipping_restrictions');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wjecf_shipping_restrictions', '_wjecf_excluded_shipping_restrictions');

