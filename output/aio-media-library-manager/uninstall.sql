-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'default_%';
DELETE FROM wp_options WHERE option_name LIKE 'AiomlSmack_default_%';

