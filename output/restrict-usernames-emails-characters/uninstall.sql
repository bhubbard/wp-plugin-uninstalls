-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('benrueeg_rue_opt_wordpress_core_version', 'BENrueeg_RUE_settings', 'registration', 'active_sitewide_plugins', 'BENrueeg_RUE_settings_Tw', 'restrict_usernames_emails_characters_ver_base', 'benrueeg_rue_wordpress_core_nace', 'benrueeg_nicename_msg_only_store_all_ids', 'benrueeg_nicename_store_all_users_id', 'benrueeg_n_store_all_completed_ids', 'benrueeg_rue_1_7____notice', 'benrueeg_nicename_error_store_all_users_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'benrueeg_rue_mgs_remove_file_update_db', 'benrueeg_rue_mgs_selectedLanguage_empty', 'benrueeg_rue_mgs_selectedLanguage_invalid');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'benrueeg_rue_mgs_remove_file_update_db', 'benrueeg_rue_mgs_selectedLanguage_empty', 'benrueeg_rue_mgs_selectedLanguage_invalid');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'benrueeg_rue_mgs_remove_file_update_db', 'benrueeg_rue_mgs_selectedLanguage_empty', 'benrueeg_rue_mgs_selectedLanguage_invalid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname', 'first_name', 'last_name', 'benrueeg_rue_mgs_remove_file_update_db', 'benrueeg_rue_mgs_selectedLanguage_empty', 'benrueeg_rue_mgs_selectedLanguage_invalid');

