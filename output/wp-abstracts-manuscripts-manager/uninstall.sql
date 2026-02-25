-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpabstracts_submit_limit', 'wpabstracts_show_description', 'wpabstracts_editor_media', 'wpabstracts_author_instructions', 'wpabstracts_chars_count', 'wpabstracts_show_keywords', 'wpabstracts_show_attachments', 'wpabstracts_permitted_attachments', 'wpabstracts_max_attach_size', 'wpabstracts_upload_limit', 'wpabstracts_attachment_pref', 'wpabstracts_show_conditions', 'wpabstracts_terms_conditions', 'wpabstracts_show_author', 'wpabstracts_show_presenter', 'wpabstracts_presenter_preference', 'wpabstracts_abstracts_columns', 'wpabstracts_accepted_shortcode', 'wpabstracts_edit_status', 'wpabstracts_change_ownership', 'wpabstracts_blind_review', 'wpabstracts_reviewer_submit', 'wpabstracts_pdf_options', 'wpabstracts_default_status', 'wpabstracts_sync_status', 'wpabstracts_accepted_status', 'wpabstracts_show_reviews', 'wpabstracts_event_id', 'wpabstracts_dashboard_id', 'wpabstracts_enable_register', 'wpabstracts_frontend_dashboard', 'wpabstracts_show_adminbar', 'wpabstracts_captcha', 'wpabstracts_login_redirect', 'wpabstracts_captcha_secret', 'wpabstracts_registration_form', 'wpabstracts_user_settings', 'wpabstracts_admin_emails', 'wpabstracts_email_admin', 'wpabstracts_email_author', 'wpabstracts_reviewer_edit', 'wpabstracts_submission_notification', 'wpabstracts_edit_notification', 'wpabstracts_review_notification', 'wpabstracts_status_notification', 'wpabstracts_submit_templateId', 'wpabstracts_author_edit_templateId', 'wpabstracts_admin_templateId', 'wpabstracts_admin_edit_templateId', 'wpabstracts_approval_templateId');
DELETE FROM wp_options WHERE option_name IN ('wpabstracts_rejected_templateId', 'wpabstracts_underreview_templateId', 'wpabstracts_version');
DELETE FROM wp_options WHERE option_name LIKE 'wpabstracts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpabstracts_enable_notification');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpabstracts_enable_notification');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpabstracts_enable_notification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpabstracts_enable_notification');

