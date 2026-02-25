-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sonic_play_selected_theme', 'sonic_play_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sonic_play_source_type', '_sonic_play_attachment_id', '_sonic_play_mp3_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sonic_play_source_type', '_sonic_play_attachment_id', '_sonic_play_mp3_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sonic_play_source_type', '_sonic_play_attachment_id', '_sonic_play_mp3_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sonic_play_source_type', '_sonic_play_attachment_id', '_sonic_play_mp3_url');

