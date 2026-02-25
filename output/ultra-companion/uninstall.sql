-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_meta_identity', 'post_images', 'post_gallery_image_count', 'post_embed_video_url', 'post_embed_audio_url', '_wp_attachment_image_alt', 'wpop_ignore_notice222');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_meta_identity', 'post_images', 'post_gallery_image_count', 'post_embed_video_url', 'post_embed_audio_url', '_wp_attachment_image_alt', 'wpop_ignore_notice222');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_meta_identity', 'post_images', 'post_gallery_image_count', 'post_embed_video_url', 'post_embed_audio_url', '_wp_attachment_image_alt', 'wpop_ignore_notice222');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_meta_identity', 'post_images', 'post_gallery_image_count', 'post_embed_video_url', 'post_embed_audio_url', '_wp_attachment_image_alt', 'wpop_ignore_notice222');

