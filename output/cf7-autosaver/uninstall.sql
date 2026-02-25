-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autosaver-for-cf7-autosaver', 'autosaver-for-cf7-fill-with-facebook');
DELETE FROM wp_options WHERE option_name LIKE '%-version';
DELETE FROM wp_options WHERE option_name LIKE 'autosaver-for-cf7-%';

