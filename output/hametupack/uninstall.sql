-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'hametupack-show-player-card', 'hametupack-fb-app-id-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('episode_type', 'audio_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('episode_type', 'audio_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('episode_type', 'audio_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('episode_type', 'audio_file');

