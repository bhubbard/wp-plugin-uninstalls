-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('secret_posts_views', 'secret_posts_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('secret_posts_views', 'secret_posts_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('secret_posts_views', 'secret_posts_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('secret_posts_views', 'secret_posts_date');

