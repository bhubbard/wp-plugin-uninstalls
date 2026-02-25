-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seo_optimizer_enable_function', 'seo_optimizer_attribute_option', 'seo_optimizer_preserve_existing_attributes', 'seo_optimizer_custom_template', 'seo_optimizer_replace_hyphens', 'seo_optimizer_replace_underscores', 'seo_optimizer_replace_periods', 'seo_optimizer_replace_commas', 'seo_optimizer_replace_numbers', 'seo_optimizer_text_case_option', 'seo_optimizer_modify_featured_image');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_wp_attachment_image_alt');

