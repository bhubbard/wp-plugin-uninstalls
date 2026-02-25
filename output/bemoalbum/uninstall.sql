-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'z_taxonomy_image%';
DELETE FROM wp_options WHERE option_name LIKE 'bemoalbum_taxonomy_image%';

