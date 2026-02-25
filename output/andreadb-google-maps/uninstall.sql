-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dba_google_maps_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dba_google_maps_markers', 'dba_google_maps_general', 'dba_google_maps_controls');
DELETE FROM wp_usermeta WHERE meta_key IN ('dba_google_maps_markers', 'dba_google_maps_general', 'dba_google_maps_controls');
DELETE FROM wp_termmeta WHERE meta_key IN ('dba_google_maps_markers', 'dba_google_maps_general', 'dba_google_maps_controls');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dba_google_maps_markers', 'dba_google_maps_general', 'dba_google_maps_controls');

