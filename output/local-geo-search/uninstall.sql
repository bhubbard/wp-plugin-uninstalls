-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geo_seo_option_name', 'geo_seo_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_layout');
DELETE FROM wp_usermeta WHERE meta_key IN ('_layout');
DELETE FROM wp_termmeta WHERE meta_key IN ('_layout');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_layout');

