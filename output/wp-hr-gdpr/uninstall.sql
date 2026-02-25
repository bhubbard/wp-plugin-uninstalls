-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'wphrgdpr_consent_quetions', 'wphrgdpr_last_update_post', 'wphrgdpr_consent_contents', 'wphrgdpr_email_templates_data', 'wphrgdpr_email_templates_label', 'wphrgdpr_page_ids', 'wphrgdrplite_page_ids', 'wphrgdrplite_created_posts', 'wphrgdpr_created_posts', 'wphr_email_settings_data-protection-form', 'wphr_email_settings_subject-access-request', 'update_plugins', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_consent_form', 'post_default_title', 'model_answers', 'model_answer_type', 'model_answers_chk', 'value_checked', 'wphrgdpr_consent_policy_submit', 'field_required', 'model_default_answers', 'model_answers_text', 'model_answers_default_chk', 'privacy_answer');
DELETE FROM wp_usermeta WHERE meta_key IN ('_consent_form', 'post_default_title', 'model_answers', 'model_answer_type', 'model_answers_chk', 'value_checked', 'wphrgdpr_consent_policy_submit', 'field_required', 'model_default_answers', 'model_answers_text', 'model_answers_default_chk', 'privacy_answer');
DELETE FROM wp_termmeta WHERE meta_key IN ('_consent_form', 'post_default_title', 'model_answers', 'model_answer_type', 'model_answers_chk', 'value_checked', 'wphrgdpr_consent_policy_submit', 'field_required', 'model_default_answers', 'model_answers_text', 'model_answers_default_chk', 'privacy_answer');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_consent_form', 'post_default_title', 'model_answers', 'model_answer_type', 'model_answers_chk', 'value_checked', 'wphrgdpr_consent_policy_submit', 'field_required', 'model_default_answers', 'model_answers_text', 'model_answers_default_chk', 'privacy_answer');

