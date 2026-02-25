-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uaau_error_log', 'unblockadblocker-options', 'unblockadblocker-install-date', 'unblockadblocker-review-notify', 'uaau-activation-admin-notice');
DELETE FROM wp_options WHERE option_name LIKE '%-options';
DELETE FROM wp_options WHERE option_name LIKE '%_error_log';
DELETE FROM wp_options WHERE option_name LIKE '%-review-notify';
DELETE FROM wp_options WHERE option_name LIKE '%-install-date';

