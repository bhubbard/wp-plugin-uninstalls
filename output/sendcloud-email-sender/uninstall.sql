-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sendcloud_email', 'sendcloud_lable', 'sendcloud_fromname', 'sendcloud_post_publish_notify', 'sendcloud_posts_reply_notify', 'sendcloud_posts_publish_notify_subject', 'sendcloud_posts_publish_notify_content', 'sendcloud_posts_reply_notify_subject', 'sendcloud_posts_reply_notify_content', 'sendcloud_version', 'sendcloud_quota_exceeded', 'sendcloud_invitecode');

