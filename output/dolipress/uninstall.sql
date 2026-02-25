-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dgform', 'dpapikey', 'dgurl', 'usehttps', 'dpgf_errors', 'telegramid');
DELETE FROM wp_options WHERE option_name LIKE 'gffield%';
DELETE FROM wp_options WHERE option_name LIKE 'dbfield%';

