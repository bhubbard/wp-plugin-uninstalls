-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgate_options', 'pgate_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'pgate_puzzle_%';
DELETE FROM wp_options WHERE option_name LIKE 'pgate_failed_logins_%';

