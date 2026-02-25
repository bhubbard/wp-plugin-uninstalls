-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('notification-limit', 'notification-position', 'notification-switch', 'notification-cookie-limit', 'time-interval', 'powered-by-switch', 'notification-sound-switch');

