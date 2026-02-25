-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iaud_days_active', 'iaud_reassign_user', 'iaud_warning_days_first', 'iaud_warning_days_final', 'iaud_email_subject_first', 'iaud_email_message_first', 'iaud_email_subject_final', 'iaud_email_message_final', 'iaud_disable_emails');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login', 'iaud_first_warning_sent', 'iaud_final_warning_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login', 'iaud_first_warning_sent', 'iaud_final_warning_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login', 'iaud_first_warning_sent', 'iaud_final_warning_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login', 'iaud_first_warning_sent', 'iaud_final_warning_sent');

