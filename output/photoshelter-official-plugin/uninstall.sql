-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ps_gallery_sort', 'photoshelter_default_width', 'photoshelter', 'ps_cookies', 'photoshelter_logged_in', 'photoshelter_menu_create', 'photoshelter_org');

