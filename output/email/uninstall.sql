-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('email_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('email_action', 'email_type', 'email_from', 'email_from_name', 'email_to', 'email_to_role', 'email_cc', 'email_cc_role', 'email_bcc', 'email_bcc_role', 'email_subject', 'to_emails', 'from_email', 'from_name', 'cc_emails', 'bcc_emails', 'email_message', 'email_hidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('email_action', 'email_type', 'email_from', 'email_from_name', 'email_to', 'email_to_role', 'email_cc', 'email_cc_role', 'email_bcc', 'email_bcc_role', 'email_subject', 'to_emails', 'from_email', 'from_name', 'cc_emails', 'bcc_emails', 'email_message', 'email_hidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('email_action', 'email_type', 'email_from', 'email_from_name', 'email_to', 'email_to_role', 'email_cc', 'email_cc_role', 'email_bcc', 'email_bcc_role', 'email_subject', 'to_emails', 'from_email', 'from_name', 'cc_emails', 'bcc_emails', 'email_message', 'email_hidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('email_action', 'email_type', 'email_from', 'email_from_name', 'email_to', 'email_to_role', 'email_cc', 'email_cc_role', 'email_bcc', 'email_bcc_role', 'email_subject', 'to_emails', 'from_email', 'from_name', 'cc_emails', 'bcc_emails', 'email_message', 'email_hidden');

