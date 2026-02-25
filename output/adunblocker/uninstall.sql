-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daau_error_log', 'adunblocker-install-date', 'adunblocker-review-notify', 'adunblocker-options', 'daau-activation-admin-notice');
DELETE FROM wp_options WHERE option_name LIKE '%-options';
DELETE FROM wp_options WHERE option_name LIKE '%_error_log';
DELETE FROM wp_options WHERE option_name LIKE '%-review-notify';
DELETE FROM wp_options WHERE option_name LIKE '%-install-date';

