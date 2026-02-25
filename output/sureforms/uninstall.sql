-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srfm_general_settings_options', 'classic-editor-replace', 'et_enable_classic_editor', 'srfm_options', 'srfm_ai_auth_user_email', 'srfm_pro_license_status', 'srfm_enable_quick_action_sidebar', 'srfm_quick_sidebar_allowed_blocks', 'srfm_security_settings_options', 'srfm_email_summary_settings_options', 'bsf_product_referers', 'srfm_default_dynamic_block_option', 'rewrite_rules', '__srfm_do_redirect', 'sureforms_usage_optin', 'srfm_database_table_versions', 'suretrigger_options', 'active_sitewide_plugins', 'allowed_astra_notices', 'bsf_usage_last_displayed_time', 'bsf_usage_migrated', 'bsf_analytics_last_displayed_time', 'get_default_dynamic_block_option', 'srfm-version', '__sureforms_do_redirect', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'bsf_analytics_track', 'bsf_usage_track');
DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time';
DELETE FROM wp_options WHERE option_name LIKE 'srfm_stripe_connect_nonce_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_astra_sites_imported_post', '_srfm_is_ai_generated', '_srfm_compliance', '_srfm_block_config', '_srfm_page_break_settings', '_srfm_form_restriction', '_srfm_conversational_form', '_srfm_form_recaptcha', '_srfm_email_notification', '_srfm_forms_styling', '_srfm_form_confirmation', '_srfm_instant_form_settings', '_srfm_use_label_as_placeholder', 'srfm_stripe_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_astra_sites_imported_post', '_srfm_is_ai_generated', '_srfm_compliance', '_srfm_block_config', '_srfm_page_break_settings', '_srfm_form_restriction', '_srfm_conversational_form', '_srfm_form_recaptcha', '_srfm_email_notification', '_srfm_forms_styling', '_srfm_form_confirmation', '_srfm_instant_form_settings', '_srfm_use_label_as_placeholder', 'srfm_stripe_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_astra_sites_imported_post', '_srfm_is_ai_generated', '_srfm_compliance', '_srfm_block_config', '_srfm_page_break_settings', '_srfm_form_restriction', '_srfm_conversational_form', '_srfm_form_recaptcha', '_srfm_email_notification', '_srfm_forms_styling', '_srfm_form_confirmation', '_srfm_instant_form_settings', '_srfm_use_label_as_placeholder', 'srfm_stripe_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_astra_sites_imported_post', '_srfm_is_ai_generated', '_srfm_compliance', '_srfm_block_config', '_srfm_page_break_settings', '_srfm_form_restriction', '_srfm_conversational_form', '_srfm_form_recaptcha', '_srfm_email_notification', '_srfm_forms_styling', '_srfm_form_confirmation', '_srfm_instant_form_settings', '_srfm_use_label_as_placeholder', 'srfm_stripe_customer_id');

