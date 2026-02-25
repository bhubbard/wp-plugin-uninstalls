-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmt_mntn_settings', '_bbp_enable_user_mention', 'dismiss-cm-notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'cmt_mntn_email_notification_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'cmt_mntn_email_notification_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'cmt_mntn_email_notification_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'cmt_mntn_email_notification_status');

