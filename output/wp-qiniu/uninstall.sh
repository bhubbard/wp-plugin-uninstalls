#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_qiniu_backup_run_rate'
wp option delete 'wp_qiniu_backup_local_paths'
wp option delete 'wp_qiniu_thumbnail_style'
wp option delete 'wp_qiniu_watermark_style'
wp option delete 'wp_qiniu_image_protect'
wp option delete 'wp_qiniu_style_split_char'
wp option delete 'wp_qiniu_access_key'
wp option delete 'wp_qiniu_secret_key'
wp option delete 'wp_qiniu_storage_bucket'
wp option delete 'wp_qiniu_backup_bucket'
wp option delete 'wp_qiniu_feed_actived'
wp option delete 'wp_qiniu_actived'
wp option delete 'wp_qiniu_storage_domain'
wp option delete 'wp_qiniu_only_logouser'
wp option delete 'wp_qiniu_use_https'
wp option delete 'wp_qiniu_backup_run_time'

# Clear Cron Jobs
wp cron event delete 'wp_qiniu_backup_corn_task_clear_files'
wp cron event delete 'wp_qiniu_backup_corn_task_database'
wp cron event delete 'wp_qiniu_backup_corn_task_www'

