-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seoaudp_openai_model', 'seoaudp_needs_backlinks_reimport', 'seoaudp_ahrefs_backlinks_last_import', 'seoaudp_backlinks_import_db_version', 'seoaudp_branded_keywords', 'seoaudp_gsc_last_import', 'seoaudp_ahrefs_last_import', 'seoaudp_gsc_queries_last_import', 'seoaudp_openai_api_key', 'seoaudp_business_name', 'seoaudp_website_url', 'seoaudp_about_website', 'seoaudp_business_country', 'seoaudp_business_state', 'seoaudp_business_city', 'seoaudp_debug_enabled', 'seo_audit_pro_documents_key', 'seo_audit_pro_documents_status', 'SEOAUDP_DB_VERSION', 'seoaudp_first_activation', 'seoaudp_gsc_processed_data', 'seoaudp_ahrefs_import_key', 'seoaudp_ahrefs_processed_data', 'seoaudp_ahrefs_import_meta', 'seoaudp_ahrefs_validation_errors', 'seoaudp_gsc_queries_processed_data');
DELETE FROM wp_options WHERE option_name LIKE 'seoaudp_%';
DELETE FROM wp_options WHERE option_name LIKE 'seoaudp_rejected_keywords_%';
DELETE FROM wp_options WHERE option_name LIKE 'seoaudp_ahrefs_processed_%';
DELETE FROM wp_options WHERE option_name LIKE 'seoaudp_ahrefs_import_meta_%';
DELETE FROM wp_options WHERE option_name LIKE 'seoaudp_ahrefs_validation_errors_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_seoaudp_main_focus_keyword', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_seoaudp_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_seoaudp_main_focus_keyword', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_seoaudp_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_seoaudp_main_focus_keyword', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_seoaudp_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_seoaudp_main_focus_keyword', '_yoast_wpseo_focuskw', 'rank_math_focus_keyword', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description', '_seopress_titles_desc', '_genesis_description', '_seoaudp_meta_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_%';

