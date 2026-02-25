-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invelity_my_gls_export_options', 'invelity-my-gls-ad', 'invelity-plugins-description', 'invelity-plugins-ad');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('invelity_gls_parcel_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('invelity_gls_parcel_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('invelity_gls_parcel_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('invelity_gls_parcel_number');

