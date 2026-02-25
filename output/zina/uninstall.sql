-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zina_options', 'zina_sidebar', 'secret');
DELETE FROM wp_options WHERE option_name LIKE '%_type';
DELETE FROM wp_options WHERE option_name LIKE '%_period';
DELETE FROM wp_options WHERE option_name LIKE '%_page';
DELETE FROM wp_options WHERE option_name LIKE '%_items';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

