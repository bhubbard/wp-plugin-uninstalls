-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shp_fbinfo', 'shp_twinfo', 'shp_gpinfo', 'shp_plinfo', 'shp_pldesc', 'shp_spage', 'shp_sfbbut', 'shp_stwbut', 'shp_sgpbut', 'shp_butpos');

