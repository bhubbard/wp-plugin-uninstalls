-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xml_video_sitemap', 'gn-sitemap-video-feed-mu-version', 'xml_video_sitemap_consulta', 'apg_video_sitemap_plugin', 'xml_video_sitemap_procesado', 'xml_video_sitemap', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');

