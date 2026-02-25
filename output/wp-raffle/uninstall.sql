-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_raffle_setting_paypal', 'wp_raffle_setting_tickets', 'wp_raffle_setting_users', 'wp_raffle_setting_events', 'wp_raffle_setting_prizes');
DELETE FROM wp_options WHERE option_name LIKE 'wp_raffle_setting_%';

