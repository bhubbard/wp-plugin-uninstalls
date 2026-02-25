-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_qiniu_backup_run_rate', 'wp_qiniu_backup_local_paths', 'wp_qiniu_thumbnail_style', 'wp_qiniu_watermark_style', 'wp_qiniu_image_protect', 'wp_qiniu_style_split_char', 'wp_qiniu_access_key', 'wp_qiniu_secret_key', 'wp_qiniu_storage_bucket', 'wp_qiniu_backup_bucket', 'wp_qiniu_feed_actived', 'wp_qiniu_actived', 'wp_qiniu_storage_domain', 'wp_qiniu_only_logouser', 'wp_qiniu_use_https', 'wp_qiniu_backup_run_time');

