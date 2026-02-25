-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('janey-ai');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

