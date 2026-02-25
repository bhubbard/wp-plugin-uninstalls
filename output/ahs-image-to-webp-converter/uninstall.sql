-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AHSITW_quality', 'AHSITW_conversion_count', 'AHSITW_unconverted_count_rough');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_AHSITW_converted');
DELETE FROM wp_usermeta WHERE meta_key IN ('_AHSITW_converted');
DELETE FROM wp_termmeta WHERE meta_key IN ('_AHSITW_converted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_AHSITW_converted');

