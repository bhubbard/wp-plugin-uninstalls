-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccspllms_enabled', 'ccspllms_site_title', 'ccspllms_site_tagline', 'ccspllms_post_types', 'ccspllms_excerpt_priority', 'ccspllms_word_limit', 'ccspllms_use_canonical', 'ccspllms_auto_regenerate', 'ccspllms_email_notifications', 'ccspllms_notification_email', 'ccspllms_cron_frequency', 'ccspllms_cron_time', 'ccspllms_debug_logging', 'ccspllms_last_generated', 'ccspllms_file_stats', 'ccspllms_auto_regenerate_new', 'ccspllms_auto_regenerate_update', 'ccspllms_version', 'ccspllms_cached_content');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ccspllms_custom_content', '_ccspllms_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ccspllms_custom_content', '_ccspllms_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ccspllms_custom_content', '_ccspllms_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ccspllms_custom_content', '_ccspllms_excluded', '_yoast_wpseo_metadesc', 'rank_math_description', '_aioseo_description');

