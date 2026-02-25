-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notify_users_email', 'notify_users_email_version', 'notify_users_mail', 'notify_users_subject_post', 'notify_users_body_post', 'notify_users_subject_comment', 'notify_users_body_comment');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_notify_users_email_sended');
DELETE FROM wp_usermeta WHERE meta_key IN ('_notify_users_email_sended');
DELETE FROM wp_termmeta WHERE meta_key IN ('_notify_users_email_sended');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_notify_users_email_sended');

