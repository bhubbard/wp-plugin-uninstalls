-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('micropub_default_post_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'micropub_auth_response', 'micropub_version', 'mf2_content', 'geo_timezone');
DELETE FROM wp_usermeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'micropub_auth_response', 'micropub_version', 'mf2_content', 'geo_timezone');
DELETE FROM wp_termmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'micropub_auth_response', 'micropub_version', 'mf2_content', 'geo_timezone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('geo_latitude', 'geo_longitude', 'micropub_auth_response', 'micropub_version', 'mf2_content', 'geo_timezone');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mf2_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mf2_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mf2_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mf2_%';

