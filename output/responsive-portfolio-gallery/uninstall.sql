-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_url_target', '_thumbnail_url', '_thumbnail_url_target', '_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_url_target', '_thumbnail_url', '_thumbnail_url_target', '_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_url_target', '_thumbnail_url', '_thumbnail_url_target', '_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_url_target', '_thumbnail_url', '_thumbnail_url_target', '_url');

