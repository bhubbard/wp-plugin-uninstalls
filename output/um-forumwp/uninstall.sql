-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('um_options', 'um_forumwp_version', 'um_forumwp_last_version_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_um_forumwp_can_topic', '_um_forumwp_can_reply', 'fmwp_original_mentions', 'fmwp_um_notifications_need_mention', 'fmwp_um_notifications_mentioned', 'fmwp_um_notifications_subscribers_need_notified', 'fmwp_um_notifications_subscribers_notified');
DELETE FROM wp_usermeta WHERE meta_key IN ('_um_forumwp_can_topic', '_um_forumwp_can_reply', 'fmwp_original_mentions', 'fmwp_um_notifications_need_mention', 'fmwp_um_notifications_mentioned', 'fmwp_um_notifications_subscribers_need_notified', 'fmwp_um_notifications_subscribers_notified');
DELETE FROM wp_termmeta WHERE meta_key IN ('_um_forumwp_can_topic', '_um_forumwp_can_reply', 'fmwp_original_mentions', 'fmwp_um_notifications_need_mention', 'fmwp_um_notifications_mentioned', 'fmwp_um_notifications_subscribers_need_notified', 'fmwp_um_notifications_subscribers_notified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_um_forumwp_can_topic', '_um_forumwp_can_reply', 'fmwp_original_mentions', 'fmwp_um_notifications_need_mention', 'fmwp_um_notifications_mentioned', 'fmwp_um_notifications_subscribers_need_notified', 'fmwp_um_notifications_subscribers_notified');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fmwp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fmwp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fmwp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fmwp_%';

