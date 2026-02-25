-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alttextlab_update_title', 'alttextlab_update_caption', 'alttextlab_update_description', 'alttextlab_api_key', 'alttextlab_lang', 'alttextlab_model_name', 'alttextlab_auto_generation_enabled', 'alttextlab_keywords', 'alttextlab_ecomm', 'alttextlab_ecomm_use_title', 'alttextlab_ecomm_use_color', 'alttextlab_ecomm_use_material', 'alttextlab_ecomm_color_field', 'alttextlab_ecomm_material_field', 'alttextlab_public', 'alttextlab_alt_prefix', 'alttextlab_alt_suffix', 'alttextlab_timeout', 'alttextlab_error_logs', 'alttextlab_db_version', 'alttextlab_refresh_src_attr', 'alttextlab_type_extensions', 'alttextlab_skip_filenotfound', 'alttextlab_insufficient_credits', 'alttextlab_setup_notice', 'alttextlab_try_later_notice', 'alttextlab_api_key_invalid_notice', 'bulk_generate_alt', 'alttextlab_enrich_post_content_success');
DELETE FROM wp_options WHERE option_name LIKE 'alttextlab_review_hidden_%';
DELETE FROM wp_options WHERE option_name LIKE 'alttextlab_bulk_select_generate_%';
DELETE FROM wp_options WHERE option_name LIKE 'alttextlab_bulk_select_generate_redirect_%';
DELETE FROM wp_options WHERE option_name LIKE 'alttextlab_enric_post_generate_%';
DELETE FROM wp_options WHERE option_name LIKE 'alttextlab_enric_post_generate__redirect_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('as3cf_filesize_total', '_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_product_image_gallery', '_wds_focus-keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('as3cf_filesize_total', '_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_product_image_gallery', '_wds_focus-keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('as3cf_filesize_total', '_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_product_image_gallery', '_wds_focus-keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('as3cf_filesize_total', '_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_product_image_gallery', '_wds_focus-keywords');

