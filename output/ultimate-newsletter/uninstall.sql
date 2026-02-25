-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('un_cron_queue', 'un_general_settings', 'un_email_throttling_settings', 'un_email_settings', 'un_email_smtp_settings', 'un_signup_confirmation_settings', 'un_subscriber_wp_users', 'un_version', 'rewrite_rules', 'un_subscribers_admin_notice', 'un_subscribers_update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('status', 'template', 'from_name', 'from_email', 'reply_to_name', 'reply_to_email', 'sent', 'opened', 'clicked', 'email', 'newsletters_received', 'user_id', 'token', 'un_subscriber_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('status', 'template', 'from_name', 'from_email', 'reply_to_name', 'reply_to_email', 'sent', 'opened', 'clicked', 'email', 'newsletters_received', 'user_id', 'token', 'un_subscriber_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('status', 'template', 'from_name', 'from_email', 'reply_to_name', 'reply_to_email', 'sent', 'opened', 'clicked', 'email', 'newsletters_received', 'user_id', 'token', 'un_subscriber_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('status', 'template', 'from_name', 'from_email', 'reply_to_name', 'reply_to_email', 'sent', 'opened', 'clicked', 'email', 'newsletters_received', 'user_id', 'token', 'un_subscriber_id');

