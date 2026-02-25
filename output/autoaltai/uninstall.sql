-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoaltai_api_key', 'autoaltai_langauge', 'autoaltai_force_lang', 'autoaltai_writing_style', 'autoaltai_generate_title', 'autoaltai_generate_caption', 'autoaltai_generate_description', 'autoaltai_alt_text_min', 'autoaltai_alt_text_max', 'autoaltai_alt_prefix', 'autoaltai_alt_suffix', 'autoaltai_upload_enabled', 'autoaltai_allowed_imagetype', 'autoaltai_skip_filenotfound', 'autoaltai_seo_keywords', 'autoaltai_post_title', 'autoaltai_chatgpt_prompt', 'autoaltai_woo_productname', 'autoaltai_woo_title', 'autoaltai_is_public', 'autoaltai_generate_metadata', 'autoaltai_timeout', 'autoaltai_refresh_img_src', 'autoaltai_log_errors', 'autoaltai_db_version', 'wpseo_taxonomy_meta', 'autoaltai_show_setup_notice');
DELETE FROM wp_options WHERE option_name LIKE 'autoaltai_bulk_select_generate_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', 'as3cf_filesize_total', '_yoast_wpseo_focuskw', '_yoast_wpseo_additional_keyphrases', 'rank_math_focus_keyword', '_seopress_analysis_target_kw', '_wds_focus-keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', 'as3cf_filesize_total', '_yoast_wpseo_focuskw', '_yoast_wpseo_additional_keyphrases', 'rank_math_focus_keyword', '_seopress_analysis_target_kw', '_wds_focus-keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', 'as3cf_filesize_total', '_yoast_wpseo_focuskw', '_yoast_wpseo_additional_keyphrases', 'rank_math_focus_keyword', '_seopress_analysis_target_kw', '_wds_focus-keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', 'as3cf_filesize_total', '_yoast_wpseo_focuskw', '_yoast_wpseo_additional_keyphrases', 'rank_math_focus_keyword', '_seopress_analysis_target_kw', '_wds_focus-keywords');

