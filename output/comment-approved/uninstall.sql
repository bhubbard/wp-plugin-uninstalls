-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('comment_approved_message', 'comment_approved_subject', 'comment_approved_mail_type', 'comment_approved_enable', 'comment_approved_default');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('notify_me', 'comment_approve_notify_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('notify_me', 'comment_approve_notify_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('notify_me', 'comment_approve_notify_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('notify_me', 'comment_approve_notify_sent');

