-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_hiding_options');
DELETE FROM wp_options WHERE option_name LIKE 'content_hiding_%';

