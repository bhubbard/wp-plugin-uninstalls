-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcsim_instalments_total', '_wcsim_product_full_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcsim_instalments_total', '_wcsim_product_full_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcsim_instalments_total', '_wcsim_product_full_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcsim_instalments_total', '_wcsim_product_full_price');

