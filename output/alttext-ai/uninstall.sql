-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atai_woo_marketplace', 'atai_api_key', 'atai_network_api_key', 'atai_network_all_settings', 'atai_lang', 'atai_model_name', 'atai_force_lang', 'atai_update_title', 'atai_update_caption', 'atai_update_description', 'atai_enabled', 'atai_skip_filenotfound', 'atai_keywords', 'atai_keywords_title', 'atai_admin_capability', 'atai_ecomm', 'atai_ecomm_title', 'atai_public', 'atai_alt_prefix', 'atai_alt_suffix', 'atai_gpt_prompt', 'atai_type_extensions', 'atai_excluded_post_types', 'atai_no_credit_warning', 'atai_bulk_refresh_overwrite', 'atai_bulk_refresh_external', 'atai_refresh_src_attr', 'atai_wp_generate_metadata', 'atai_timeout', 'atai_network_settings', 'atai_network_hide_credits', 'atai_error_logs', 'atai_csv_import_lang', 'atai_db_version', 'elementor_version', 'atai_show_setup_notice', 'atai_insufficient_credits', 'bulk_generate_alt', 'atai_enrich_post_content_success');
DELETE FROM wp_options WHERE option_name LIKE 'alttext_bulk_select_generate_%';
DELETE FROM wp_options WHERE option_name LIKE 'atai_url_access_suggestion_%';
DELETE FROM wp_options WHERE option_name LIKE 'atai_bulk_skip_reasons_%';
DELETE FROM wp_options WHERE option_name LIKE 'alttext_bulk_select_generate_redirect_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_wds_focus-keywords', '_elementor_data', '_elementor_css', 'as3cf_filesize_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_wds_focus-keywords', '_elementor_data', '_elementor_css', 'as3cf_filesize_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_wds_focus-keywords', '_elementor_data', '_elementor_css', 'as3cf_filesize_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'amazonS3_info', 'cloudinary_info', '_wds_focus-keywords', '_elementor_data', '_elementor_css', 'as3cf_filesize_total');

