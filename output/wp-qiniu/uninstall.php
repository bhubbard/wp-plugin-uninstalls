<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_qiniu_backup_run_rate');
delete_site_option('wp_qiniu_backup_run_rate');
delete_option('wp_qiniu_backup_local_paths');
delete_site_option('wp_qiniu_backup_local_paths');
delete_option('wp_qiniu_thumbnail_style');
delete_site_option('wp_qiniu_thumbnail_style');
delete_option('wp_qiniu_watermark_style');
delete_site_option('wp_qiniu_watermark_style');
delete_option('wp_qiniu_image_protect');
delete_site_option('wp_qiniu_image_protect');
delete_option('wp_qiniu_style_split_char');
delete_site_option('wp_qiniu_style_split_char');
delete_option('wp_qiniu_access_key');
delete_site_option('wp_qiniu_access_key');
delete_option('wp_qiniu_secret_key');
delete_site_option('wp_qiniu_secret_key');
delete_option('wp_qiniu_storage_bucket');
delete_site_option('wp_qiniu_storage_bucket');
delete_option('wp_qiniu_backup_bucket');
delete_site_option('wp_qiniu_backup_bucket');
delete_option('wp_qiniu_feed_actived');
delete_site_option('wp_qiniu_feed_actived');
delete_option('wp_qiniu_actived');
delete_site_option('wp_qiniu_actived');
delete_option('wp_qiniu_storage_domain');
delete_site_option('wp_qiniu_storage_domain');
delete_option('wp_qiniu_only_logouser');
delete_site_option('wp_qiniu_only_logouser');
delete_option('wp_qiniu_use_https');
delete_site_option('wp_qiniu_use_https');
delete_option('wp_qiniu_backup_run_time');
delete_site_option('wp_qiniu_backup_run_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_qiniu_backup_corn_task_clear_files');
wp_clear_scheduled_hook('wp_qiniu_backup_corn_task_database');
wp_clear_scheduled_hook('wp_qiniu_backup_corn_task_www');

