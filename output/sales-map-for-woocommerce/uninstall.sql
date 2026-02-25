-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sgitswcsm_gmap_api', 'sgitswcsm_debug_mode', 'sgitswcsm_order_count', 'sgitswcsm_default_latlong', 'sgitswcsm_default_zoom');

