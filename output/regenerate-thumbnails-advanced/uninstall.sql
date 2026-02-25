-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rta_image_sizes');
DELETE FROM wp_options WHERE option_name LIKE '%-notices';

