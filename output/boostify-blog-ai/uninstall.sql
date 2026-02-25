-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boostify_blog_ai_views_refresh_interval', 'boostify_blog_ai_views_auto_append', 'boostify_blog_ai_views_auto_format', 'boostify_blog_ai_views_auto_display', 'boostify_schedule_settings', 'boostify_blog_ai_schedule_settings', 'boostify_cron_started');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta_title', 'meta_description', 'meta_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta_title', 'meta_description', 'meta_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta_title', 'meta_description', 'meta_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta_title', 'meta_description', 'meta_keywords');

