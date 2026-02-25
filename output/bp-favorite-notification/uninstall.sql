-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb-bp-fav-notification-version', 'wb-bp-fav-notification-updater-id');

