-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sts_default_approver', 'sts_powerdby_display', 'sts_recaptcha_settings', 'sts_categories', 'sts_departments', 'sts_email_notification', 'sts_plugin_style', 'sts_approvers', 'default_approver_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sts_ticket_id', 'sts_ticket_category', 'sts_ticket_department', 'sts_ticket_rate', 'sts_ticket_status', 'sts_comment_rate', 'sts_ticket_author', 'sts_ticket_approver', 'sts_ticket_author_email', 'si_support_approved', 'si_support_approver', 'si_support_approver_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('sts_ticket_id', 'sts_ticket_category', 'sts_ticket_department', 'sts_ticket_rate', 'sts_ticket_status', 'sts_comment_rate', 'sts_ticket_author', 'sts_ticket_approver', 'sts_ticket_author_email', 'si_support_approved', 'si_support_approver', 'si_support_approver_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('sts_ticket_id', 'sts_ticket_category', 'sts_ticket_department', 'sts_ticket_rate', 'sts_ticket_status', 'sts_comment_rate', 'sts_ticket_author', 'sts_ticket_approver', 'sts_ticket_author_email', 'si_support_approved', 'si_support_approver', 'si_support_approver_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sts_ticket_id', 'sts_ticket_category', 'sts_ticket_department', 'sts_ticket_rate', 'sts_ticket_status', 'sts_comment_rate', 'sts_ticket_author', 'sts_ticket_approver', 'sts_ticket_author_email', 'si_support_approved', 'si_support_approver', 'si_support_approver_email');

