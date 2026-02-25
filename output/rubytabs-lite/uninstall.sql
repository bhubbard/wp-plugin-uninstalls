-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rt03', 'ruby01VA');
DELETE FROM wp_options WHERE option_name LIKE 'rt03id_%';

