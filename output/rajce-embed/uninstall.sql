-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rajce_embed_image_captions', 'rajce_embed_gallery_captions', 'rajce_embed_thumbnail_size_w', 'rajce_embed_thumbnail_size_h', 'rajce_embed_thumbnail_crop', 'rajce_embed_omit_album_cover', 'rajce_embed_thumbnail_source', 'rajce_embed_version', 'rajce_embed_thumb_default', 'rajce_embed_compatib_wp_rajce_version');
DELETE FROM wp_options WHERE option_name LIKE 'rajce_embed_%';

