-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('goto-contact-center-webchat_activated', 'goto-contact-center-webchat_snippet');
DELETE FROM wp_options WHERE option_name LIKE '%_activated';
DELETE FROM wp_options WHERE option_name LIKE '%_snippet';

