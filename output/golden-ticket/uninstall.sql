-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-display_mode_delay';
DELETE FROM wp_options WHERE option_name LIKE '%-display_mode_visible';
DELETE FROM wp_options WHERE option_name LIKE '%-display_mode_mouse_over';
DELETE FROM wp_options WHERE option_name LIKE '%-delay_time';
DELETE FROM wp_options WHERE option_name LIKE '%-message';
DELETE FROM wp_options WHERE option_name LIKE '%-ticket_url_1';
DELETE FROM wp_options WHERE option_name LIKE '%-ticket_count';

