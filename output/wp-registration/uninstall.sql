-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpr_default_signup_form', 'wpr_is_installed', 'wpr_user_msg', 'wpr_migrate_controle', 'wpregistration_meta', 'wpr_icon_cache_fonticons', 'wpr_core_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpr_account_status', 'wpr_fields', 'wpr_assign_user_role', 'wpr_form_id', 'wpr_password', 'wpr_last_login', '_wpr_core', '_icl_lang_duplicate_of', 'wpr_last_page_visit', 'wpr_email_key', 'wpr_member_restrict', 'wpr_role_restrict', 'wpr_restrict_msg', '_wpr_wpml_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpr_account_status', 'wpr_fields', 'wpr_assign_user_role', 'wpr_form_id', 'wpr_password', 'wpr_last_login', '_wpr_core', '_icl_lang_duplicate_of', 'wpr_last_page_visit', 'wpr_email_key', 'wpr_member_restrict', 'wpr_role_restrict', 'wpr_restrict_msg', '_wpr_wpml_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpr_account_status', 'wpr_fields', 'wpr_assign_user_role', 'wpr_form_id', 'wpr_password', 'wpr_last_login', '_wpr_core', '_icl_lang_duplicate_of', 'wpr_last_page_visit', 'wpr_email_key', 'wpr_member_restrict', 'wpr_role_restrict', 'wpr_restrict_msg', '_wpr_wpml_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpr_account_status', 'wpr_fields', 'wpr_assign_user_role', 'wpr_form_id', 'wpr_password', 'wpr_last_login', '_wpr_core', '_icl_lang_duplicate_of', 'wpr_last_page_visit', 'wpr_email_key', 'wpr_member_restrict', 'wpr_role_restrict', 'wpr_restrict_msg', '_wpr_wpml_user');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpr_wpml_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpr_wpml_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpr_wpml_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpr_wpml_%';

