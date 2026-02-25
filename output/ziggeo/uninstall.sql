-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ziggeo_video', 'ziggeo_events', 'ziggeo_templates', 'ziggeo_keys', 'ziggeo_translations', 'ziggeo_notifications', 'ziggeo_videos_count');

