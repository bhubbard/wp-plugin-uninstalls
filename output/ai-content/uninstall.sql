-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wai_current_csv', 'wai_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_deactivated';
DELETE FROM wp_options WHERE option_name LIKE '%-fc-styles';

