-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bc_transient_keys', 'brightcove_version', '_brightcove_plugin_activated', 'bc_default_player_width', '_brightcove_default_account', '_brightcove_accounts', '_brightcove_pending_videos', '_brightcove_salt', 'bc_transient_version');
DELETE FROM wp_options WHERE option_name LIKE 'bc_sub_%';
DELETE FROM wp_options WHERE option_name LIKE '_bc_player_ids_%';
DELETE FROM wp_options WHERE option_name LIKE '_bc_player_default_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brightcove_video_object', '_brightcove_video_id', '_brightcove_account_id', '_brightcove_hash', '_brightcove_transcoded', '_brightcove_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brightcove_video_object', '_brightcove_video_id', '_brightcove_account_id', '_brightcove_hash', '_brightcove_transcoded', '_brightcove_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brightcove_video_object', '_brightcove_video_id', '_brightcove_account_id', '_brightcove_hash', '_brightcove_transcoded', '_brightcove_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brightcove_video_object', '_brightcove_video_id', '_brightcove_account_id', '_brightcove_hash', '_brightcove_transcoded', '_brightcove_metadata');

