-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('B2S_MULTI_WIDGET', 'B2S_PLUGIN_DISABLE_TRAIL', 'B2S_PLUGIN_DEACTIVATE_SCHED_POST', 'B2S_HIDE_PREMIUM_MESSAGE', 'B2S_HIDE_TRAIL_MESSAGE', 'B2S_HIDE_TRAIL_ENDED', 'B2S_PLUGIN_GENERAL_OPTIONS', 'B2S_HIDE_RATING', 'B2S_SHOW_RATING', 'b2s_plugin_version', 'B2S_PLUGIN_UPDATE_TIME_NETWORK_PROPERTIES', 'B2S_PLUGIN_DATA_NETWORK_PROPERTIES', 'B2S_PLUGIN_CHANGELOG', 'B2S_PLUGIN_ADDON_VIDEO_TRIAL_END_DATE', 'B2S_PLUGIN_NEXT_CHECK_UPDATE_REQUEST', 'wpseo_social');
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_USER_VERSION_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_CALENDAR_BLOCKED_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_LOCK_AUTO_POST_IMPORT_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_PRG_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_META_TAGES_TWITTER_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_META_TAGES_OG_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_USER_ALLOW_SHORTCODE_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_USER_USE_PERMALINKS_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_PRIVACY_POLICY_USER_ACCEPT_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_UPDATE_MAIL_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_OPTIONS_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_SAVE_META_BOX_AUTO_SHARE_PROFILE_USER_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_OPTIONS_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_CONTENT_%';
DELETE FROM wp_options WHERE option_name LIKE 'B2S_CAL_EVENT_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('b2s_source', 'b2s_original_url', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('b2s_source', 'b2s_original_url', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('b2s_source', 'b2s_original_url', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('b2s_source', 'b2s_original_url', '_wp_attachment_image_alt');

