#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'bigbluebutton_url'
wp option delete 'bigbluebutton_salt'
wp option delete 'ee_bb_flush_rewrite_rules_flag'
wp option delete 'ee_bb_default_bbb_room'
wp option delete 'video_conf_with_bbb_version'
wp option delete 'bigbluebutton_default_roles_set'
wp option delete 'bbb_flush_incorrect_caps_once'
wp option delete 'bigbluebutton_permissions'
wp option delete 'bigbluebutton_plugin_version'
wp option delete 'bbb_db_version'
wp option delete 'mt_bbb_url'
wp option delete 'mt_salt'
wp option delete 'mt_waitForModerator'
wp option delete 'bbb_pro_max_participants'
wp option delete 'bbb_pro_join_web_iframe'
wp option delete 'bbb_pro_join_here_text'

# Delete Transients
wp transient delete 'video_conf_bbb_conflict_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-moderator-code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-viewer-code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-meeting-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-recordable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-wait-for-moderator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-start-time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-start-time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-start-time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-start-time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb_pro_room_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb_pro_room_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb_pro_room_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb_pro_room_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bbb-room-limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bbb-room-limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bbb-room-limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bbb-room-limit'"
