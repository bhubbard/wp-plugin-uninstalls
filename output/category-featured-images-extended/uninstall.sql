-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cks_cfix_exclude_category', 'cks_cfix_fallback_category', 'cks_cfix_version', 'cks_cfix_use_yoast_primary', 'cks_cfix_featured_images', 'cfi_featured_images', 'cfix_featured_images', 'cks_cfix_version ');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_primary_category');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_primary_category');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_primary_category');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_primary_category');

