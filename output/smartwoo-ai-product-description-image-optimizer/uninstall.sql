-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartwoo_enable_dalle', 'smartwoo_api_key', 'smartwoo_max_tokens', 'smartwoo_description_tone', 'smartwoo_gpt_model', 'smartwoo_prompt_title', 'smartwoo_prompt_short_description', 'smartwoo_prompt_full_description', 'smartwoo_prompt_tags', 'smartwoo_prompt_image_alt_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

