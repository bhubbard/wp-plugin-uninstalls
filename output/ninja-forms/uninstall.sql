-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ninja_forms_doing_required_updates', 'ninja_forms_required_updates', 'ninja_forms_needs_updates', 'ninja_forms_db_version', 'ninja_forms_addons_feed', 'nf_aff', 'ninja_forms_allow_tracking', 'ninja_forms_do_not_allow_tracking', 'nf_active_promotions', 'nf_form_tel_sent', 'ninja_forms_submissions_settings', 'active_sitewide_plugins', 'ninja_forms_settings', 'nf_admin_notice', 'nf_sub_expiration', 'nf_expired_submissions', 'nf_import_form', 'ninja_forms_disable_survey_promo', 'nf_form_tel_data', 'nf_tel_collate', 'ninja_forms_load_deprecated', 'ninja_forms_mailchimp_interests', 'ninja_forms_oauth_client_secret', 'ninja_forms_optin_reported', 'ninja_forms_transactional_email_enabled', 'ninja_forms_version', 'nf_upgrade_notice', 'nf_converted_subs', 'nf_converted_forms', 'nf_convert_subs_num', 'nf_convert_subs_step', 'nf_email_fav_updated', 'nf_database_migrations', 'nf_converted_form_reset', 'nf_version_upgraded_from', 'nf_convert_forms_complete', 'nf_convert_notifications_forms', 'nf_convert_notifications_complete', 'nf_update_email_settings_complete', 'nf_be_data', 'ninja_forms_zuul', 'ninja_forms_cache_mode', '_site_transient_update_plugins', 'ninja_forms_optin_email_recovered', 'ninja_forms_optin_email', 'ninja_forms_oauth_client_id', 'nf_bad_update_requirement', 'ninja_forms_disable_slim_promo', 'ninja_forms_disable_survey_promo', 'update_plugins');
DELETE FROM wp_options WHERE option_name IN ('nf_dismiss_php_version_whip', 'ninja_forms_prevent_updates');
DELETE FROM wp_options WHERE option_name LIKE 'nf_doing_%';
DELETE FROM wp_options WHERE option_name LIKE 'nf_form_%';
DELETE FROM wp_options WHERE option_name LIKE '_wp_session_%';
DELETE FROM wp_options WHERE option_name LIKE '_wp_session_expires_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nf_onboarding', '_nf_form_id', '_form_id', 'nf_anonymize_data', 'ninja_forms_form', '_seq_num', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('nf_onboarding', '_nf_form_id', '_form_id', 'nf_anonymize_data', 'ninja_forms_form', '_seq_num', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('nf_onboarding', '_nf_form_id', '_form_id', 'nf_anonymize_data', 'ninja_forms_form', '_seq_num', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nf_onboarding', '_nf_form_id', '_form_id', 'nf_anonymize_data', 'ninja_forms_form', '_seq_num', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%';

