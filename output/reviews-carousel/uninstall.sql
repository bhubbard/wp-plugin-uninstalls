-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revica_items', 'revica_autoplay', 'revica_arrows');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_revica_media_type', '_revica_video_id', '_revica_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_revica_media_type', '_revica_video_id', '_revica_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_revica_media_type', '_revica_video_id', '_revica_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_revica_media_type', '_revica_video_id', '_revica_image_id');

