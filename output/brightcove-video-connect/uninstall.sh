#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bc_transient_keys'
wp option delete 'brightcove_version'
wp option delete '_brightcove_plugin_activated'
wp option delete 'bc_default_player_width'
wp option delete '_brightcove_default_account'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bc_sub_%'"
wp option delete '_brightcove_accounts'
wp option delete '_brightcove_pending_videos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_bc_player_ids_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_bc_player_default_%'"
wp option delete '_brightcove_salt'

# Delete Transients
wp transient delete 'bc_transient_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brightcove_video_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brightcove_video_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brightcove_video_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brightcove_video_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brightcove_video_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brightcove_video_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brightcove_video_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brightcove_video_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brightcove_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brightcove_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brightcove_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brightcove_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brightcove_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brightcove_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brightcove_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brightcove_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brightcove_transcoded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brightcove_transcoded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brightcove_transcoded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brightcove_transcoded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brightcove_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brightcove_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brightcove_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brightcove_metadata'"
