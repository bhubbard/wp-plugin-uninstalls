-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('announcement_notification_bar_options', 'announcement_notification_bar_activation_notice');

