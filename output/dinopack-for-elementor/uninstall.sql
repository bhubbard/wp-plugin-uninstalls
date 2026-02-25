-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dinopack_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', '_yoast_wpseo_title', '_dinopack_seo_title', '_yoast_wpseo_metadesc', '_dinopack_meta_description', '_yoast_wpseo_focuskw', '_dinopack_focus_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', '_yoast_wpseo_title', '_dinopack_seo_title', '_yoast_wpseo_metadesc', '_dinopack_meta_description', '_yoast_wpseo_focuskw', '_dinopack_focus_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', '_yoast_wpseo_title', '_dinopack_seo_title', '_yoast_wpseo_metadesc', '_dinopack_meta_description', '_yoast_wpseo_focuskw', '_dinopack_focus_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', '_yoast_wpseo_title', '_dinopack_seo_title', '_yoast_wpseo_metadesc', '_dinopack_meta_description', '_yoast_wpseo_focuskw', '_dinopack_focus_keywords');

