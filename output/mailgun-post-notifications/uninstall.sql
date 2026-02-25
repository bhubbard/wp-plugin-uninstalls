-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailgun_post_notifications_to_address', 'mailgun_post_notifications_from_name', 'mailgun_post_notifications_from_address', 'mailgun_post_notifications_subject');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mailgun_notification_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mailgun_notification_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mailgun_notification_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mailgun_notification_sent');

