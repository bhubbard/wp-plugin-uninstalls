-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('njt_gdpr_dataaccess', 'njt_gdpr_data_breach', 'njt_gdpr_data_rectification', 'njt_gdpr_eu', 'njt_gdpr_forget_me', 'njt_gdpr_integrations', 'njt_gdpr_policy', 'njt_gdpr_privacy_settings_page', 'njt_gdpr_term', 'njt_gdpr_unsub', 'njt_gdpr_version', 'njt_gdpr', 'njt_gdpr_cookie_popup_content', 'njt_gdpr_cookie_popup_agree_text', 'njt_gdpr_cookie_popup_decline_text', 'njt_gdpr_cookie_popup_display_type', 'njt_gdpr_cookie_popup_hide_pages', 'njt_gdpr_cookie_popup_show_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_user_id', '_date_mail_sent', '_old', '_new', 'njt_gdpr_allow_permissions', 'njt_gdpr_acceped_policy', 'njt_gdpr_acceped_policy_at', 'njt_gdpr_acceped_term', 'njt_gdpr_acceped_term_at');
DELETE FROM wp_usermeta WHERE meta_key IN ('_user_id', '_date_mail_sent', '_old', '_new', 'njt_gdpr_allow_permissions', 'njt_gdpr_acceped_policy', 'njt_gdpr_acceped_policy_at', 'njt_gdpr_acceped_term', 'njt_gdpr_acceped_term_at');
DELETE FROM wp_termmeta WHERE meta_key IN ('_user_id', '_date_mail_sent', '_old', '_new', 'njt_gdpr_allow_permissions', 'njt_gdpr_acceped_policy', 'njt_gdpr_acceped_policy_at', 'njt_gdpr_acceped_term', 'njt_gdpr_acceped_term_at');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_user_id', '_date_mail_sent', '_old', '_new', 'njt_gdpr_allow_permissions', 'njt_gdpr_acceped_policy', 'njt_gdpr_acceped_policy_at', 'njt_gdpr_acceped_term', 'njt_gdpr_acceped_term_at');

