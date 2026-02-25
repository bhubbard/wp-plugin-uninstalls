-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trackserver_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ts_app_passwords', 'ts_owntracks_share', 'ts_owntracks_follow', 'ts_infobar_template', 'ts_geofences', 'ts_trackme_key', 'ts_osmand_key', 'ts_sendlocation_key', 'ts_tracks_admin_view', 'ts_tracks_admin_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('ts_app_passwords', 'ts_owntracks_share', 'ts_owntracks_follow', 'ts_infobar_template', 'ts_geofences', 'ts_trackme_key', 'ts_osmand_key', 'ts_sendlocation_key', 'ts_tracks_admin_view', 'ts_tracks_admin_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('ts_app_passwords', 'ts_owntracks_share', 'ts_owntracks_follow', 'ts_infobar_template', 'ts_geofences', 'ts_trackme_key', 'ts_osmand_key', 'ts_sendlocation_key', 'ts_tracks_admin_view', 'ts_tracks_admin_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ts_app_passwords', 'ts_owntracks_share', 'ts_owntracks_follow', 'ts_infobar_template', 'ts_geofences', 'ts_trackme_key', 'ts_osmand_key', 'ts_sendlocation_key', 'ts_tracks_admin_view', 'ts_tracks_admin_per_page');

