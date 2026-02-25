-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('idea_cb_settings', 'idea_cb_db_version', 'cb_wa_vars_validation', 'idea_cb_whatsapp_templates', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cb_status', 'cb_sources', 'cb_email_subject', 'cb_notification_type', 'cb_time', 'cb_duration', 'cb_template', 'cb_wa_template', 'cb_wa_template_vars', 'cb_media_url', 'cb_media_format');
DELETE FROM wp_usermeta WHERE meta_key IN ('cb_status', 'cb_sources', 'cb_email_subject', 'cb_notification_type', 'cb_time', 'cb_duration', 'cb_template', 'cb_wa_template', 'cb_wa_template_vars', 'cb_media_url', 'cb_media_format');
DELETE FROM wp_termmeta WHERE meta_key IN ('cb_status', 'cb_sources', 'cb_email_subject', 'cb_notification_type', 'cb_time', 'cb_duration', 'cb_template', 'cb_wa_template', 'cb_wa_template_vars', 'cb_media_url', 'cb_media_format');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cb_status', 'cb_sources', 'cb_email_subject', 'cb_notification_type', 'cb_time', 'cb_duration', 'cb_template', 'cb_wa_template', 'cb_wa_template_vars', 'cb_media_url', 'cb_media_format');

