-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('list_posts_count', 'list_posts_exclude', 'list_posts_include_series', 'list_posts_include');
DELETE FROM wp_usermeta WHERE meta_key IN ('list_posts_count', 'list_posts_exclude', 'list_posts_include_series', 'list_posts_include');
DELETE FROM wp_termmeta WHERE meta_key IN ('list_posts_count', 'list_posts_exclude', 'list_posts_include_series', 'list_posts_include');
DELETE FROM wp_commentmeta WHERE meta_key IN ('list_posts_count', 'list_posts_exclude', 'list_posts_include_series', 'list_posts_include');

