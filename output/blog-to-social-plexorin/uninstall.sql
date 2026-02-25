-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bts_plexorin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bts_plexorin_cancel_share', '_bts_plexorin_custom_title', '_bts_plexorin_custom_description', '_bts_plexorin_custom_image', '_yoast_wpseo_metadesc', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bts_plexorin_cancel_share', '_bts_plexorin_custom_title', '_bts_plexorin_custom_description', '_bts_plexorin_custom_image', '_yoast_wpseo_metadesc', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bts_plexorin_cancel_share', '_bts_plexorin_custom_title', '_bts_plexorin_custom_description', '_bts_plexorin_custom_image', '_yoast_wpseo_metadesc', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bts_plexorin_cancel_share', '_bts_plexorin_custom_title', '_bts_plexorin_custom_description', '_bts_plexorin_custom_image', '_yoast_wpseo_metadesc', '_aioseo_description');

