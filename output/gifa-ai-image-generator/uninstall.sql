-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbstgif_openapi_key', 'wbstgif_dim__width', 'wbstgif_dim__height');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id');

