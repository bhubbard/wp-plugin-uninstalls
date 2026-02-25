-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wt_geotargeting_geobase', 'wt_geotargeting_sistem', 'wt_geotargeting_default', 'wt_geotargeting_debug', 'wt_geotargeting_region');

