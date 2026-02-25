-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('googlemapapi_key', 'wittymap_loc', 'wittymap_def_zoom', 'wittymap_marker', 'wittymap_draggable', 'wittymap_doubleClickZoom', 'wittymap_zoomControl', 'wittymap_scrollWheel', 'wittymap_streetView', 'wittymap_markerLabel', 'wittymap_labelX', 'wittymap_labelY');

