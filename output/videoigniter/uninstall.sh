#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'videoigniter_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoigniter_tracks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoigniter_tracks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoigniter_tracks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoigniter_tracks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoigniter_playlist_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoigniter_playlist_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoigniter_playlist_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoigniter_playlist_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoigniter_volume'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoigniter_volume'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoigniter_volume'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoigniter_volume'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoigniter_show_fullscreen_toggle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoigniter_show_fullscreen_toggle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoigniter_show_fullscreen_toggle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoigniter_show_fullscreen_toggle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_videoigniter_show_playback_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_videoigniter_show_playback_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_videoigniter_show_playback_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_videoigniter_show_playback_speed'"
