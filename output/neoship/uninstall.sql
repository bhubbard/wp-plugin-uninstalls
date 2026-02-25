-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('neoship_login', 'neoship_has_gls', 'neoship_has_packeta', 'neoship_has_123', 'neoship_has_dpd');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_parcelshop_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_parcelshop_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_parcelshop_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_parcelshop_id');

