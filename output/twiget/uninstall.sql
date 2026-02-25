-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twiget_options');
DELETE FROM wp_options WHERE option_name LIKE 'tweets-%';

