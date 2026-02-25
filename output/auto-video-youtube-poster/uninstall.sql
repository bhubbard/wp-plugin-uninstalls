-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('credentials_images_to_youtube', 'code_images_to_youtube', 'intro_image_to_youtube', 'permisos_crear_videos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sended-post-to-youtube', 'titulo_alternativo_texto', 'songs-to-youtube', 'frames-to-youtube', 'link_youtube_desc', 'tags_youtube');
DELETE FROM wp_usermeta WHERE meta_key IN ('sended-post-to-youtube', 'titulo_alternativo_texto', 'songs-to-youtube', 'frames-to-youtube', 'link_youtube_desc', 'tags_youtube');
DELETE FROM wp_termmeta WHERE meta_key IN ('sended-post-to-youtube', 'titulo_alternativo_texto', 'songs-to-youtube', 'frames-to-youtube', 'link_youtube_desc', 'tags_youtube');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sended-post-to-youtube', 'titulo_alternativo_texto', 'songs-to-youtube', 'frames-to-youtube', 'link_youtube_desc', 'tags_youtube');

