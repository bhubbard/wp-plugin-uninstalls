-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmap_key', 'gmap_link_txt', 'gmap_width', 'gmap_height', 'gmap_type_view', 'gmap_zoom');

