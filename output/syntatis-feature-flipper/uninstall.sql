-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_attachment_pages_enabled');
DELETE FROM wp_options WHERE option_name LIKE '%_stash';

