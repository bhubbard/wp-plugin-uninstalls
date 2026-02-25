-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('etm_advanced_settings', 'etm_settings', 'etm_db_errors', 'etm_machine_translation_settings', 'etm_db_stored_data', 'etm_updated_database_gettext_original_id_update', 'etm_plugin_version', 'etm_show_error_db_message', 'etm_remove_duplicate_gettext_rows', 'etm_remove_duplicate_untranslated_gettext_rows', 'etm_remove_duplicate_dictionary_rows', 'etm_remove_duplicate_untranslated_dictionary_rows', 'etm_remove_cdata_original_and_dictionary_rows', 'etm_remove_untranslated_links_dictionary_rows', 'etm_updated_database_original_id_insert_166', 'etm_updated_database_original_id_cleanup_166', 'etm_updated_database_original_id_update_166', 'etm_regenerate_original_meta_table', 'etm_clean_original_meta_table', 'etm_original_strings_table_for_recovery', 'woocommerce_permalinks', 'et_divi', 'etranslation_multilingual_avg_affiliate_id', 'etranslation_multilinguals_affiliate_id', 'etm_mt_domains_othermt', 'etm_gettext_normalized', 'etm_gettext_scan_paths_completed');
DELETE FROM wp_options WHERE option_name LIKE 'processed_original_string_meta_post_id_for_%';
DELETE FROM wp_options WHERE option_name LIKE 'etm_default_language_wc_permalink_structure_%';
DELETE FROM wp_options WHERE option_name LIKE 'etm_current_language_wc_permalink_structure_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_object_id', 'etm_language', 'etm_always_use_this_language', 'etm_editor_user_meta', 'locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_object_id', 'etm_language', 'etm_always_use_this_language', 'etm_editor_user_meta', 'locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_object_id', 'etm_language', 'etm_always_use_this_language', 'etm_editor_user_meta', 'locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_object_id', 'etm_language', 'etm_always_use_this_language', 'etm_editor_user_meta', 'locale');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification';

