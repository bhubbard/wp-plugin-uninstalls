-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('damuro_comments', 'damuro_default_background', 'damuro_stash_folder', 'damuro_sandbox_url', 'damuro_default_width', 'damuro_default_height', 'damuro_default_canvas_width', 'damuro_default_canvas_height', 'damuro_comment_moderation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('deviantart_muro_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('deviantart_muro_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('deviantart_muro_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('deviantart_muro_image');

