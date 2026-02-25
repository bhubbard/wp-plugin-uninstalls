-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ekl_rss_rss_item_link', 'ekl_rss_rss_item_thumbnail', 'ekl_rss_rss_item_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ekl_rss_rss_item_link', 'ekl_rss_rss_item_thumbnail', 'ekl_rss_rss_item_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ekl_rss_rss_item_link', 'ekl_rss_rss_item_thumbnail', 'ekl_rss_rss_item_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ekl_rss_rss_item_link', 'ekl_rss_rss_item_thumbnail', 'ekl_rss_rss_item_id');

