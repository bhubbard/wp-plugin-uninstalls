-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tkf_preview_permalink', 'tkf_video_last_update', 'tkf_db_version', 'tkf_medias_migrated');

