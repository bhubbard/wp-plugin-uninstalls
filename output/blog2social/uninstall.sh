#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_USER_VERSION_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_CALENDAR_BLOCKED_%'"
wp option delete 'B2S_MULTI_WIDGET'
wp option delete 'B2S_PLUGIN_DISABLE_TRAIL'
wp option delete 'B2S_PLUGIN_DEACTIVATE_SCHED_POST'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_LOCK_AUTO_POST_IMPORT_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_PRG_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_META_TAGES_TWITTER_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_META_TAGES_OG_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_USER_ALLOW_SHORTCODE_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_USER_USE_PERMALINKS_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_PRIVACY_POLICY_USER_ACCEPT_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_UPDATE_MAIL_%'"
wp option delete 'B2S_HIDE_PREMIUM_MESSAGE'
wp option delete 'B2S_HIDE_TRAIL_MESSAGE'
wp option delete 'B2S_HIDE_TRAIL_ENDED'
wp option delete 'B2S_PLUGIN_GENERAL_OPTIONS'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_OPTIONS_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_SAVE_META_BOX_AUTO_SHARE_PROFILE_USER_%'"
wp option delete 'B2S_HIDE_RATING'
wp option delete 'B2S_SHOW_RATING'
wp option delete 'b2s_plugin_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_OPTIONS_%'"
wp option delete 'B2S_PLUGIN_UPDATE_TIME_NETWORK_PROPERTIES'
wp option delete 'B2S_PLUGIN_DATA_NETWORK_PROPERTIES'
wp option delete 'B2S_PLUGIN_CHANGELOG'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_PLUGIN_POST_CONTENT_%'"
wp option delete 'B2S_PLUGIN_ADDON_VIDEO_TRIAL_END_DATE'
wp option delete 'B2S_PLUGIN_NEXT_CHECK_UPDATE_REQUEST'
wp option delete 'wpseo_social'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'B2S_CAL_EVENT_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2s_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2s_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2s_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2s_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'b2s_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'b2s_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'b2s_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'b2s_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
