-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_share_last_sync', 'post_share_count', 'post_share_total_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_share_last_sync', 'post_share_count', 'post_share_total_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_share_last_sync', 'post_share_count', 'post_share_total_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_share_last_sync', 'post_share_count', 'post_share_total_count');

