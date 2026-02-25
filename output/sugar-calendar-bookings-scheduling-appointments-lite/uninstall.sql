-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sugar_calendar_bookings_initial_version', 'sugar_calendar_bookings_initial_activation_time', 'wp_mail_smtp_activation_prevent_redirect', 'sugar_calendar_bookings_admin_notices', 'sugar_calendar_bookings_connect_token', 'sugar_calendar_bookings_connect', 'active_sitewide_plugins', 'scb_just_activated', 'scbookings_lite_just_activated', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sugar_calendar_bookings_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('sugar_calendar_bookings_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('sugar_calendar_bookings_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sugar_calendar_bookings_admin_notices');

