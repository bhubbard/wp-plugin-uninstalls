-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sms_from_email', 'sms_from_name', 'sms_default_subject', 'sms_new_notify', 'sms_publish_post', 'sms_new_notify_email', 'bf_easysms_widget_options');

