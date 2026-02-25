-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('designsetgo_llms_txt_physical', 'designsetgo_global_styles', 'designsetgo_settings', 'rewrite_rules', 'dsgo_form_submissions_count', 'designsetgo_llms_txt_flush_rules');
DELETE FROM wp_options WHERE option_name LIKE 'dsgo_form_attrs_%';
DELETE FROM wp_options WHERE option_name LIKE 'dsgo_has_blocks_%';
DELETE FROM wp_options WHERE option_name LIKE 'designsetgo_llms_md_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dsg_form_fields', '_dsg_form_id', '_dsg_submission_date', '_dsg_submission_ip', '_dsg_submission_user_agent', '_dsg_submission_referer', 'dsg_gdpr_notice_dismissed', '_dsg_email_sent', '_dsg_email_to', '_dsg_email_sent_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dsg_form_fields', '_dsg_form_id', '_dsg_submission_date', '_dsg_submission_ip', '_dsg_submission_user_agent', '_dsg_submission_referer', 'dsg_gdpr_notice_dismissed', '_dsg_email_sent', '_dsg_email_to', '_dsg_email_sent_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dsg_form_fields', '_dsg_form_id', '_dsg_submission_date', '_dsg_submission_ip', '_dsg_submission_user_agent', '_dsg_submission_referer', 'dsg_gdpr_notice_dismissed', '_dsg_email_sent', '_dsg_email_to', '_dsg_email_sent_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dsg_form_fields', '_dsg_form_id', '_dsg_submission_date', '_dsg_submission_ip', '_dsg_submission_user_agent', '_dsg_submission_referer', 'dsg_gdpr_notice_dismissed', '_dsg_email_sent', '_dsg_email_to', '_dsg_email_sent_date');

