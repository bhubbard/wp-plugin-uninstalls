-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pvtracker_utm_sources');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pvtracker_views', '_view_timestamps', '_add_to_cart_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pvtracker_views', '_view_timestamps', '_add_to_cart_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pvtracker_views', '_view_timestamps', '_add_to_cart_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pvtracker_views', '_view_timestamps', '_add_to_cart_count');

