-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%all_slugs';
DELETE FROM wp_options WHERE option_name LIKE '%redirecting';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('socialized_slug', '_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('socialized_slug', '_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('socialized_slug', '_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('socialized_slug', '_yoast_wpseo_metadesc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%slug';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slug';

