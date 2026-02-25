-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_cs_options', 'wp_chameleon', 'wp_chameleon_background', 'active_sitewide_plugins', 'wpdocs_options');
DELETE FROM wp_options WHERE option_name LIKE '%qrcode_hash';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_coming_soon', '_coming_soon_date', '_coming_soon_time', '_wcs_stock_threshold', '_wcs_stock_based');
DELETE FROM wp_usermeta WHERE meta_key IN ('_coming_soon', '_coming_soon_date', '_coming_soon_time', '_wcs_stock_threshold', '_wcs_stock_based');
DELETE FROM wp_termmeta WHERE meta_key IN ('_coming_soon', '_coming_soon_date', '_coming_soon_time', '_wcs_stock_threshold', '_wcs_stock_based');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_coming_soon', '_coming_soon_date', '_coming_soon_time', '_wcs_stock_threshold', '_wcs_stock_based');

