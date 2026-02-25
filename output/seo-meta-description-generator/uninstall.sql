-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smg_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smg_meta_description', '_yoast_wpseo_metadesc', 'rank_math_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smg_meta_description', '_yoast_wpseo_metadesc', 'rank_math_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smg_meta_description', '_yoast_wpseo_metadesc', 'rank_math_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smg_meta_description', '_yoast_wpseo_metadesc', 'rank_math_description');

