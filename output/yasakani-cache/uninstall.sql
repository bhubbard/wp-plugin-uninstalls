-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yasakani_option', 'yasakani_statistics', 'yasakani_notice');
DELETE FROM wp_options WHERE option_name LIKE 'yasakani_statistics_%';

