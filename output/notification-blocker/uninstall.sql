-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notification_blocker_active', 'notification_blocker_ui_style', 'notification_blocker_hidden_notices');

