-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%active';
DELETE FROM wp_options WHERE option_name LIKE '%id';
DELETE FROM wp_options WHERE option_name LIKE '%dismiss';
DELETE FROM wp_options WHERE option_name LIKE '%content';
DELETE FROM wp_options WHERE option_name LIKE '%type';
DELETE FROM wp_options WHERE option_name LIKE '%exclude';

