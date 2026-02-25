-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_url_key', '_target_url', '_goto_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_url_key', '_target_url', '_goto_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_url_key', '_target_url', '_goto_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_url_key', '_target_url', '_goto_views');

