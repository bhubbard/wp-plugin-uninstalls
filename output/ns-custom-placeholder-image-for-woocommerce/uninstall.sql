-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ns-placeholder-image-from-list');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

