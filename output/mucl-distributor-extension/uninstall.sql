-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dt_original_blog_id', 'dt_original_post_id', 'dt_connection_map');
DELETE FROM wp_usermeta WHERE meta_key IN ('dt_original_blog_id', 'dt_original_post_id', 'dt_connection_map');
DELETE FROM wp_termmeta WHERE meta_key IN ('dt_original_blog_id', 'dt_original_post_id', 'dt_connection_map');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dt_original_blog_id', 'dt_original_post_id', 'dt_connection_map');

