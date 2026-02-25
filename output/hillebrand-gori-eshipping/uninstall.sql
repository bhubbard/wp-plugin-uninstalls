-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('HGES_PACKAGING_AVAILABLE', 'HGES_PREF_TRANSP', 'HGES_WORKING_DAYS');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_variation_quantity');
DELETE FROM wp_usermeta WHERE meta_key IN ('_variation_quantity');
DELETE FROM wp_termmeta WHERE meta_key IN ('_variation_quantity');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_variation_quantity');

