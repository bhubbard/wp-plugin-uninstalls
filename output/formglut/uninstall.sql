-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formglut_global_modules_status', '_formglut_global_form_settings', '_formglut_security_salt', '__formglut_global_form_settings', '_formglut_installed_version', 'formglut_entry_details_migrated', 'formglut_db_formglut_logs_added', 'formglut_scheduled_actions_migrated', '_fg_ins_by', '_formglut_hCaptcha_keys_status', '_formglut_reCaptcha_keys_status', '_formglut_turnstile_keys_status', '_formglut_form_permission', '_formglut_reCaptcha_details', '_formglut_hCaptcha_details', '_formglut_turnstile_details', '_formglut_mailchimp_details', '__formglut_payment_module_settings', '_formglut_email_report_summary', '__fg_imorted_forms_map', 'recently_activated', '_formglut_ins_by', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_has_formglut', '_formg_forms_has_role', '_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_has_formglut', '_formg_forms_has_role', '_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_has_formglut', '_formg_forms_has_role', '_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_has_formglut', '_formg_forms_has_role', '_form');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'formglut_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'formglut_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'formglut_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'formglut_dismissed_notice_%';

