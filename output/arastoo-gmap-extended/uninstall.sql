-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arastoo_gmap_api', 'arastoo_gmap_content', 'arastoo_gmap_lat', 'arastoo_gmap_long', 'arastoo_gmap_icon', 'arastoo_gmap_height');

