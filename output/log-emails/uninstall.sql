-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('log_emails_limit_days');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_log_emails_log_to', '_log_emails_log_from', '_log_emails_log_cc', '_log_emails_log_bcc', '_log_emails_log_altbody', '_log_emails_log_content-type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_log_emails_log_to', '_log_emails_log_from', '_log_emails_log_cc', '_log_emails_log_bcc', '_log_emails_log_altbody', '_log_emails_log_content-type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_log_emails_log_to', '_log_emails_log_from', '_log_emails_log_cc', '_log_emails_log_bcc', '_log_emails_log_altbody', '_log_emails_log_content-type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_log_emails_log_to', '_log_emails_log_from', '_log_emails_log_cc', '_log_emails_log_bcc', '_log_emails_log_altbody', '_log_emails_log_content-type');

