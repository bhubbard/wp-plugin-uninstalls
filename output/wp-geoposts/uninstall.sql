-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api_key', 'geo_post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_gp_location', 'wp_gp_latitude', 'wp_gp_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_gp_location', 'wp_gp_latitude', 'wp_gp_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_gp_location', 'wp_gp_latitude', 'wp_gp_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_gp_location', 'wp_gp_latitude', 'wp_gp_longitude');

