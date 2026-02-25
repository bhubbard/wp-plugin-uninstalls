-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_notification_bar_activated', 'wp_notification_bar_notice_views', 'mtsnb_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mtsnb_data', 'wp_notification_bar_ignore_notice', 'wp_notification_bar_ignore_notice_2', '_mtsnb_override_bar');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mtsnb_data', 'wp_notification_bar_ignore_notice', 'wp_notification_bar_ignore_notice_2', '_mtsnb_override_bar');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mtsnb_data', 'wp_notification_bar_ignore_notice', 'wp_notification_bar_ignore_notice_2', '_mtsnb_override_bar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mtsnb_data', 'wp_notification_bar_ignore_notice', 'wp_notification_bar_ignore_notice_2', '_mtsnb_override_bar');

