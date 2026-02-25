-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registrationnotification');
DELETE FROM wp_options WHERE option_name LIKE '% header';

