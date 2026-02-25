-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_admin_notification_display_role', 'wp_admin_notification_display_term_start', 'wp_admin_notification_display_term_end');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_admin_notification_display_role', 'wp_admin_notification_display_term_start', 'wp_admin_notification_display_term_end');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_admin_notification_display_role', 'wp_admin_notification_display_term_start', 'wp_admin_notification_display_term_end');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_admin_notification_display_role', 'wp_admin_notification_display_term_start', 'wp_admin_notification_display_term_end');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpan_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpan_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpan_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpan_%';

