-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('text_to_audio_with_ads_api_key', 'text_to_audio_with_ads_api_password', 'text_to_audio_with_ads_player_secret', 'text_to_audio_with_ads_error_logging', 'text_to_audio_with_ads_errors', 'text_to_audio_with_ads_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_previous_status', '_previous_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_previous_status', '_previous_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_previous_status', '_previous_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_previous_status', '_previous_content');

