-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpm_show_untranslated_strings', 'wpm_meta_box_errors', 'wpm_admin_notices', 'wpm_db_version', 'wpm_custom_post_types', 'wpm_admin_footer_text_rated', 'wpm_site_language', 'wpm_use_redirect', 'wpm_use_prefix', 'wpm_string_translation', 'wpm_base_translation', 'wpm_uninstall_translations', 'wpm_elementor_compatibility_free', 'wpm_divi_compatibility_free', 'wpm_allow_auto_override', 'wpm_languages', 'qtranslate_term_name', 'wpmpro_upgrade_license', 'wpm_hide_newsletter', 'wpm_openai_settings', 'wpm_version', 'wpm_config', 'wpm_installing', 'saswp_transient_schema_ids', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'wpm_admin_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpm_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpm_bulk_translate_errors_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_languages', '_menu_item_languages_type', '_menu_item_languages_show', 'dismissed_wp_pointers', 'edit_lang', 'locale', '_elementor_data', '_elementor_data_translate', '_wpm_translated_comments', 'user_lang', 'wpm_lang', '_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_languages', '_menu_item_languages_type', '_menu_item_languages_show', 'dismissed_wp_pointers', 'edit_lang', 'locale', '_elementor_data', '_elementor_data_translate', '_wpm_translated_comments', 'user_lang', 'wpm_lang', '_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_languages', '_menu_item_languages_type', '_menu_item_languages_show', 'dismissed_wp_pointers', 'edit_lang', 'locale', '_elementor_data', '_elementor_data_translate', '_wpm_translated_comments', 'user_lang', 'wpm_lang', '_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_languages', '_menu_item_languages_type', '_menu_item_languages_show', 'dismissed_wp_pointers', 'edit_lang', 'locale', '_elementor_data', '_elementor_data_translate', '_wpm_translated_comments', 'user_lang', 'wpm_lang', '_yoast_wpseo_metadesc');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_translate';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_translate';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_translate';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_translate';

