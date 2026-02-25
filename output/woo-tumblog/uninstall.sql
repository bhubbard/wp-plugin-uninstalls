-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_tumblog_version', 'woo_tumblog_custom_template', 'woo_custom_rss', 'woo_tumblog_content_method', 'woo_image_link_to', 'woo_tumblog_width', 'woo_tumblog_video_width', 'woo_resize', 'woo_thumb_w', 'woo_articles_term_id', 'woo_images_term_id', 'woo_audio_term_id', 'woo_video_term_id', 'woo_quotes_term_id', 'woo_links_term_id', 'woo_custom_upload_tracking', 'woo_themename', 'woo_upload_custom_errors', 'woo_tumblog_post_formats_upgraded', 'woo_post_image_support', 'woo_auto_img', 'framework_woo_default_image', 'woo_force_all', 'woo_force_single');
DELETE FROM wp_options WHERE option_name LIKE '%_term_id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image', 'audio', 'video-embed', 'quote-copy', 'quote-url', 'quote-author', 'link-url', '_thumbnail_id', '_image_alignment', 'width', 'height');
DELETE FROM wp_usermeta WHERE meta_key IN ('image', 'audio', 'video-embed', 'quote-copy', 'quote-url', 'quote-author', 'link-url', '_thumbnail_id', '_image_alignment', 'width', 'height');
DELETE FROM wp_termmeta WHERE meta_key IN ('image', 'audio', 'video-embed', 'quote-copy', 'quote-url', 'quote-author', 'link-url', '_thumbnail_id', '_image_alignment', 'width', 'height');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image', 'audio', 'video-embed', 'quote-copy', 'quote-url', 'quote-author', 'link-url', '_thumbnail_id', '_image_alignment', 'width', 'height');

