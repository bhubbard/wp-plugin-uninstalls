-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nd_login_time', 'nd_num_comments', 'nd_num_posts', 'nd_viewed_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('nd_login_time', 'nd_num_comments', 'nd_num_posts', 'nd_viewed_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('nd_login_time', 'nd_num_comments', 'nd_num_posts', 'nd_viewed_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nd_login_time', 'nd_num_comments', 'nd_num_posts', 'nd_viewed_posts');

