-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_video', '_video_url', '_video_embed_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_video', '_video_url', '_video_embed_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_video', '_video_url', '_video_embed_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_video', '_video_url', '_video_embed_url');

