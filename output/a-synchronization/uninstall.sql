-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wechat_article_id', 'enclosure', '_ximalaya_track_id', '_ximalaya_sync_log');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wechat_article_id', 'enclosure', '_ximalaya_track_id', '_ximalaya_sync_log');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wechat_article_id', 'enclosure', '_ximalaya_track_id', '_ximalaya_sync_log');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wechat_article_id', 'enclosure', '_ximalaya_track_id', '_ximalaya_sync_log');

