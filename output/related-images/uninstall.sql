-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('related_images_options');
DELETE FROM wp_options WHERE option_name LIKE '%_related_images';

