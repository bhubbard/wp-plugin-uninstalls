-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluentform_global_modules_status', '_fluentform_global_form_settings', '_fluentform_security_salt', '_fluentform_installed_version', 'fluentform_entry_details_migrated', 'fluentform_db_fluentform_logs_added', 'fluentform_scheduled_actions_migrated', '_ff_ins_by', '_fluentform_hCaptcha_keys_status', '_fluentform_reCaptcha_keys_status', '_fluentform_turnstile_keys_status', '_fluentform_reCaptcha_details', '_fluentform_form_permission', '_fluentform_cleantalk_details', '_fluentform_default_style_template', '_fluentform_hCaptcha_details', '_fluentform_turnstile_details', '__fluentform_payment_module_settings', 'fluentform_payment_settings_stripe', '_fluentform_double_optin_settings', '_fluentform_mailchimp_details', '_fluentform_email_report_summary', '__ff_imorted_forms_map', 'fluentform_dashboard_stats_v1', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'fluentform_payment_settings_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_has_fluentform', '_fluent_forms_allowed_forms', '_fluent_forms_has_specific_forms_permission', '_fluent_forms_has_role', '_form');
DELETE FROM wp_usermeta WHERE meta_key IN ('_has_fluentform', '_fluent_forms_allowed_forms', '_fluent_forms_has_specific_forms_permission', '_fluent_forms_has_role', '_form');
DELETE FROM wp_termmeta WHERE meta_key IN ('_has_fluentform', '_fluent_forms_allowed_forms', '_fluent_forms_has_specific_forms_permission', '_fluent_forms_has_role', '_form');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_has_fluentform', '_fluent_forms_allowed_forms', '_fluent_forms_has_specific_forms_permission', '_fluent_forms_has_role', '_form');

