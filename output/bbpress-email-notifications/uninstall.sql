-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('notification_bbpress_subscriptions', 'notification_bbpress_merge', 'notification_bbpress_split');
DELETE FROM wp_usermeta WHERE meta_key IN ('notification_bbpress_subscriptions', 'notification_bbpress_merge', 'notification_bbpress_split');
DELETE FROM wp_termmeta WHERE meta_key IN ('notification_bbpress_subscriptions', 'notification_bbpress_merge', 'notification_bbpress_split');
DELETE FROM wp_commentmeta WHERE meta_key IN ('notification_bbpress_subscriptions', 'notification_bbpress_merge', 'notification_bbpress_split');

