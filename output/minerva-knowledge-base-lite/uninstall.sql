-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_mkb_flushed_rewrite_cpt', '_mkb_flushed_rewrite_topic', '_mkb_flushed_rewrite_tag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mkb_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mkb_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mkb_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mkb_views');

