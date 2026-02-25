-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('load-html-files-settings');
DELETE FROM wp_options WHERE option_name LIKE '%_form_rendered';

