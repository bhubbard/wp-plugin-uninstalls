-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('facioj_autoloader_not_optimized');
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

