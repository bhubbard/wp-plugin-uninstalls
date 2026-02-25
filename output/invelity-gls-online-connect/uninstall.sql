-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invelity_gls_export_options', 'invelity-gls-export-ad', 'invelity-plugins-description', 'invelity-plugins-ad');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', 'inv_gls_picked_shop_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', 'inv_gls_picked_shop_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', 'inv_gls_picked_shop_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', 'inv_gls_picked_shop_id');

