-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('zalo', 'tiktok', 'facebook', 'instagram', 'linkedin', 'myspace', 'pinterest', 'soundcloud', 'tumblr', 'wikipedia', 'x', 'youtube', 'threads', '_avatar', 'layout', '_thumbnail_id', '_related_posts');
DELETE FROM wp_usermeta WHERE meta_key IN ('zalo', 'tiktok', 'facebook', 'instagram', 'linkedin', 'myspace', 'pinterest', 'soundcloud', 'tumblr', 'wikipedia', 'x', 'youtube', 'threads', '_avatar', 'layout', '_thumbnail_id', '_related_posts');
DELETE FROM wp_termmeta WHERE meta_key IN ('zalo', 'tiktok', 'facebook', 'instagram', 'linkedin', 'myspace', 'pinterest', 'soundcloud', 'tumblr', 'wikipedia', 'x', 'youtube', 'threads', '_avatar', 'layout', '_thumbnail_id', '_related_posts');
DELETE FROM wp_commentmeta WHERE meta_key IN ('zalo', 'tiktok', 'facebook', 'instagram', 'linkedin', 'myspace', 'pinterest', 'soundcloud', 'tumblr', 'wikipedia', 'x', 'youtube', 'threads', '_avatar', 'layout', '_thumbnail_id', '_related_posts');

