-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kggm_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('kggm-param-address', 'kggm-param-infowindow', 'kggm-param-marker', 'kggm-param-marker-custom', 'kggm-param-map', 'kggm-param-width', 'kggm-param-height', 'kggm-param-zoom', 'kggm-param-type', 'kggm-param-swheel', 'kggm-param-controls', 'kggm-param-cache', 'kggm-param-class', 'kggm-param-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('kggm-param-address', 'kggm-param-infowindow', 'kggm-param-marker', 'kggm-param-marker-custom', 'kggm-param-map', 'kggm-param-width', 'kggm-param-height', 'kggm-param-zoom', 'kggm-param-type', 'kggm-param-swheel', 'kggm-param-controls', 'kggm-param-cache', 'kggm-param-class', 'kggm-param-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('kggm-param-address', 'kggm-param-infowindow', 'kggm-param-marker', 'kggm-param-marker-custom', 'kggm-param-map', 'kggm-param-width', 'kggm-param-height', 'kggm-param-zoom', 'kggm-param-type', 'kggm-param-swheel', 'kggm-param-controls', 'kggm-param-cache', 'kggm-param-class', 'kggm-param-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('kggm-param-address', 'kggm-param-infowindow', 'kggm-param-marker', 'kggm-param-marker-custom', 'kggm-param-map', 'kggm-param-width', 'kggm-param-height', 'kggm-param-zoom', 'kggm-param-type', 'kggm-param-swheel', 'kggm-param-controls', 'kggm-param-cache', 'kggm-param-class', 'kggm-param-id');

