-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('external_image_whichimgs', 'external_image_excludes');
DELETE FROM wp_options WHERE option_name LIKE 'saving_imported_images_%';

