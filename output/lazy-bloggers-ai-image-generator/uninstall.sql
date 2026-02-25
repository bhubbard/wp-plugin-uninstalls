-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lazy_bloggers_ai_image_generator_logs', 'lazy_bloggers_ai_image_generator_api_key', 'lazy_bloggers_ai_image_generator_size', 'lazy_bloggers_ai_image_generator_include_title', 'lazy_bloggers_ai_image_generator_include_category', 'lazy_bloggers_ai_image_generator_include_tag', 'lazy_bloggers_ai_image_generator_use_post_content', 'lazy_bloggers_ai_image_generator_style_prompt', 'lazy_bloggers_ai_image_generator_enable_logging');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

