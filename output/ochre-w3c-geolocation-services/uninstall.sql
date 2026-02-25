-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ochregeo_rgeocode', 'ochregeo_opmode', 'ochregeo_globalactionjs', 'ochregeo_useypf', 'ochregeo_ypfappid', 'ochregeo_lastgeocodergc');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ochregeo_action', 'ochregeo_actionp');
DELETE FROM wp_usermeta WHERE meta_key IN ('ochregeo_action', 'ochregeo_actionp');
DELETE FROM wp_termmeta WHERE meta_key IN ('ochregeo_action', 'ochregeo_actionp');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ochregeo_action', 'ochregeo_actionp');

