-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_secondline_image_retry_count', '_secondline_image_import_failed', 'secondline_attachment_md5', 'secondline_imported_guid', 'secondline_themes_episode_number', 'secondline_themes_season_number', 'secondline_themes_external_embed', 'audio_file', 'duration', 'filesize', 'enclosure', '_audiourl', 'secondline_themes_parent_show_post', 'secondline_rss_feed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_secondline_image_retry_count', '_secondline_image_import_failed', 'secondline_attachment_md5', 'secondline_imported_guid', 'secondline_themes_episode_number', 'secondline_themes_season_number', 'secondline_themes_external_embed', 'audio_file', 'duration', 'filesize', 'enclosure', '_audiourl', 'secondline_themes_parent_show_post', 'secondline_rss_feed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_secondline_image_retry_count', '_secondline_image_import_failed', 'secondline_attachment_md5', 'secondline_imported_guid', 'secondline_themes_episode_number', 'secondline_themes_season_number', 'secondline_themes_external_embed', 'audio_file', 'duration', 'filesize', 'enclosure', '_audiourl', 'secondline_themes_parent_show_post', 'secondline_rss_feed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_secondline_image_retry_count', '_secondline_image_import_failed', 'secondline_attachment_md5', 'secondline_imported_guid', 'secondline_themes_episode_number', 'secondline_themes_season_number', 'secondline_themes_external_embed', 'audio_file', 'duration', 'filesize', 'enclosure', '_audiourl', 'secondline_themes_parent_show_post', 'secondline_rss_feed');

