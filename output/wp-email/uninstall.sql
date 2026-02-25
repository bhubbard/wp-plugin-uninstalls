-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('email_options', 'email_fields', 'email_contenttype', 'email_snippet', 'email_interval', 'email_multiple', 'email_imageverify', 'email_template_title', 'email_template_subtitle', 'email_template_subject', 'email_template_body', 'email_template_bodyalt', 'email_template_sentsuccess', 'email_template_sentfailed', 'email_template_error', 'stats_display', 'stats_mostlimit', 'email_smtp', 'email_mailer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-email-remark', 'wp-email-title');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-email-remark', 'wp-email-title');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-email-remark', 'wp-email-title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-email-remark', 'wp-email-title');

