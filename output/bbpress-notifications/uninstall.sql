-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbpress_notifications_new_topic_recipients', 'bbpress_notifications_new_topic_email_subject', 'bbpress_notifications_new_topic_email_body', 'bbpress_notifications_new_reply_recipients', 'bbpress_notifications_new_reply_email_subject', 'bbpress_notifications_new_reply_email_body');

