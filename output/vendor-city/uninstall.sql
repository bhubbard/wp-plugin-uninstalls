-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vendorname', 'establishment_year', 'street_name', 'area_name', 'state', 'pincode');
DELETE FROM wp_usermeta WHERE meta_key IN ('vendorname', 'establishment_year', 'street_name', 'area_name', 'state', 'pincode');
DELETE FROM wp_termmeta WHERE meta_key IN ('vendorname', 'establishment_year', 'street_name', 'area_name', 'state', 'pincode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vendorname', 'establishment_year', 'street_name', 'area_name', 'state', 'pincode');

