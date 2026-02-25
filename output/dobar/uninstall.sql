-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dobar_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'dobar.%';

