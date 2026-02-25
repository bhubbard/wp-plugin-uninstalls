-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_imgspy_history', 'wb_imgspy_history_post_id', 'wb_imgspy_scan', 'wb_imgspider_ver', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wb_imgspider_cnf_%';
DELETE FROM wp_options WHERE option_name LIKE '%ver';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wb_watermark', 'wb_imgspy_auto_save_image', '_edit_lock', 'imgspy_errors', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wb_watermark', 'wb_imgspy_auto_save_image', '_edit_lock', 'imgspy_errors', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wb_watermark', 'wb_imgspy_auto_save_image', '_edit_lock', 'imgspy_errors', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wb_watermark', 'wb_imgspy_auto_save_image', '_edit_lock', 'imgspy_errors', '_thumbnail_id');

