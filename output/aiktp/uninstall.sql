-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiktp_api_key', 'aiktpz_token', 'aiktpz_content_length', 'aiktpz_content_tone', 'aiktpz_custom_prompt', 'aiktpz_content_language', 'aiktpz_migration_done', 'aiktp_author', 'aiktp_category', 'chatgpt_aiktp_key', 'aiktpz_bulk_products', 'aiktpz_bulk_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_short_description', '_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_focuskw');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_short_description', '_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_focuskw');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_short_description', '_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_focuskw');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_short_description', '_wp_attachment_image_alt', 'rank_math_focus_keyword', '_yoast_wpseo_focuskw');

