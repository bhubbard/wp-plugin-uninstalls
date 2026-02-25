-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fetchub_guid_cache', 'fetchub_cron_enabled', 'fetchub_cron_paused', 'fetchub_recent_summaries', 'fetchub_settings', 'fetchub_token', 'fetchub_stop_all', 'fetchub_sched_lock_all', 'fetchub_upgrade_lock');
DELETE FROM wp_options WHERE option_name LIKE 'fetchub_run_%';
DELETE FROM wp_options WHERE option_name LIKE 'fetchub_no_new_posts_%';
DELETE FROM wp_options WHERE option_name LIKE 'fetchub_sched_lock_%';
DELETE FROM wp_options WHERE option_name LIKE 'fetchub_force_once_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fetchub_guid', '_fetchub_summary', '_fetchub_feed_label', '_fetchub_feed_url', '_fetchub_original_url', '_fetchub_publication_timestamp', '_fetchub_publication_date', '_fetchub_source_date', '_fetchub_publication_time', '_fetchub_topic_fp', '_fetchub_model', '_fetchub_raw_summary', '_fetchub_raw_title', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fetchub_guid', '_fetchub_summary', '_fetchub_feed_label', '_fetchub_feed_url', '_fetchub_original_url', '_fetchub_publication_timestamp', '_fetchub_publication_date', '_fetchub_source_date', '_fetchub_publication_time', '_fetchub_topic_fp', '_fetchub_model', '_fetchub_raw_summary', '_fetchub_raw_title', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fetchub_guid', '_fetchub_summary', '_fetchub_feed_label', '_fetchub_feed_url', '_fetchub_original_url', '_fetchub_publication_timestamp', '_fetchub_publication_date', '_fetchub_source_date', '_fetchub_publication_time', '_fetchub_topic_fp', '_fetchub_model', '_fetchub_raw_summary', '_fetchub_raw_title', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fetchub_guid', '_fetchub_summary', '_fetchub_feed_label', '_fetchub_feed_url', '_fetchub_original_url', '_fetchub_publication_timestamp', '_fetchub_publication_date', '_fetchub_source_date', '_fetchub_publication_time', '_fetchub_topic_fp', '_fetchub_model', '_fetchub_raw_summary', '_fetchub_raw_title', '_wp_attachment_image_alt');

