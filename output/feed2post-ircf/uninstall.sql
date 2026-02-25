-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feed2post_options', 'feed2post_license_key', 'feed2post_notice', 'feed2post_lock', 'feed2post_log_file');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fields', 'hide_not_imported_fields', 'feed_type', 'filters', 'style', 'post_type', 'crontab_enabled', 'crontab', 'cron_period', 'facebook_pages', 'linkedin_token', 'feed_id', 'posts_updated_at', 'posts_updated_at_end', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('fields', 'hide_not_imported_fields', 'feed_type', 'filters', 'style', 'post_type', 'crontab_enabled', 'crontab', 'cron_period', 'facebook_pages', 'linkedin_token', 'feed_id', 'posts_updated_at', 'posts_updated_at_end', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('fields', 'hide_not_imported_fields', 'feed_type', 'filters', 'style', 'post_type', 'crontab_enabled', 'crontab', 'cron_period', 'facebook_pages', 'linkedin_token', 'feed_id', 'posts_updated_at', 'posts_updated_at_end', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fields', 'hide_not_imported_fields', 'feed_type', 'filters', 'style', 'post_type', 'crontab_enabled', 'crontab', 'cron_period', 'facebook_pages', 'linkedin_token', 'feed_id', 'posts_updated_at', 'posts_updated_at_end', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_default';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_default';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_default';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_default';

