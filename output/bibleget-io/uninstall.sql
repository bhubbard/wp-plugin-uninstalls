-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bibleget_settings', 'BGET', 'bibleget_versions', 'bibleget_error_admin_notices', 'bibleget_languages', 'bibleget_admin_notices');
DELETE FROM wp_options WHERE option_name LIKE '%IDX';
DELETE FROM wp_options WHERE option_name LIKE 'bibleget_biblebooks%';

