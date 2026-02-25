-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trp_license_status', 'trp_advanced_settings', 'trp_settings', 'trp_add_ons_settings', 'trp_license_key', 'trp_license_details', 'trp_plugin_optin', 'trp_machine_translated_characters', 'trp_db_errors', 'trp_machine_translation_settings', 'trp_language_switcher_settings', 'trp_db_stored_data', 'trp_machine_translation_counter', 'trp_updated_database_gettext_original_id_update', 'trp_migrate_old_slug_to_new_parent_and_translate_slug_table_term_meta_284', 'trp_plugin_version', 'trp_show_error_db_message', 'trp_remove_duplicate_gettext_rows', 'trp_remove_duplicate_dictionary_rows', 'trp_remove_duplicate_untranslated_dictionary_rows', 'trp_remove_cdata_original_and_dictionary_rows', 'trp_remove_untranslated_links_dictionary_rows', 'trp_replace_original_id_null', 'trp_updated_database_original_id_insert_166', 'trp_updated_database_original_id_cleanup_166', 'trp_updated_database_original_id_update_166', 'trp_regenerate_original_meta_table', 'trp_clean_original_meta_table', 'trp_original_strings_table_for_recovery', 'woocommerce_permalinks', 'trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_type_and_tax_284', 'trp_migrate_old_slug_to_new_parent_and_translate_slug_table_post_meta_284', 'trp_ls_v2_migrated_from_legacy', 'et_divi', 'trp_ald_settings', 'translatepress_avg_affiliate_id', 'translatepress_affiliate_id', 'trp_gettext_normalized', 'trp_gettext_scan_paths_completed', 'trp_onboarding_started', 'update_plugins', 'trp_checked_licence', 'trp_debug_force_check_license_request', 'trp_debug_force_check_license_response', 'trp_debug_activate_license_request', 'trp_debug_activate_license_response', 'trp_machine_translation_counter_safety_reset', 'trp_mtapi_cached_quota', 'trp_checked_if_site_meets_conditions_for_review', 'trp_onboarding_previous_step');
DELETE FROM wp_options WHERE option_name IN ('trp_onboarding_errors', 'trp_gettext_search');
DELETE FROM wp_options WHERE option_name LIKE 'processed_original_string_meta_post_id_for_%';
DELETE FROM wp_options WHERE option_name LIKE 'tp_default_language_wc_permalink_structure_%';
DELETE FROM wp_options WHERE option_name LIKE 'tp_current_language_wc_permalink_structure_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_trp_dismissed_gettext_notice', '_menu_item_object_id', 'first_name', 'last_name', 'trp_language', 'trp_always_use_this_language', 'trp_editor_user_meta', 'trp_dismissed_admin_bar_notifications', 'locale', 'trp_email_course_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_trp_dismissed_gettext_notice', '_menu_item_object_id', 'first_name', 'last_name', 'trp_language', 'trp_always_use_this_language', 'trp_editor_user_meta', 'trp_dismissed_admin_bar_notifications', 'locale', 'trp_email_course_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_trp_dismissed_gettext_notice', '_menu_item_object_id', 'first_name', 'last_name', 'trp_language', 'trp_always_use_this_language', 'trp_editor_user_meta', 'trp_dismissed_admin_bar_notifications', 'locale', 'trp_email_course_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_trp_dismissed_gettext_notice', '_menu_item_object_id', 'first_name', 'last_name', 'trp_language', 'trp_always_use_this_language', 'trp_editor_user_meta', 'trp_dismissed_admin_bar_notifications', 'locale', 'trp_email_course_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_notification';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_notification';

