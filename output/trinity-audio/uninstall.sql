-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trinity_audio_max_exec_time', 'trinity_audio_installkey', 'trinity_audio_bulk_update_heartbeat', 'trinity_audio_bulk_update_num_posts_updated', 'trinity_audio_gender_id', 'trinity_audio_defconf', 'trinity_audio_add_post_title', 'trinity_audio_add_post_excerpt', 'trinity_audio_position', 'trinity_audio_poweredby', 'trinity_audio_skip_tags', 'trinity_audio', 'trinity_audio_update_all', 'trinity_audio_source_language', 'trinity_audio_check_for_loop', 'trinity_player_position', 'trinity_audio_configuration_v5_failed', 'trinity_audio_voice_id', 'trinity_audio_translate', 'trinity_audio_languages_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('trinity_audio_post_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('trinity_audio_post_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('trinity_audio_post_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('trinity_audio_post_hash');

