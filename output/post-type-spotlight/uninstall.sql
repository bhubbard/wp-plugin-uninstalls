-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pts_featured_post_types_settings', 'pts_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pts_featured_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pts_featured_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pts_featured_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pts_featured_post');

