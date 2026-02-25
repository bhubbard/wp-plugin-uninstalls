#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgn_db_version'
wp option delete 'wgn_api_token'
wp option delete 'wgn_bot_token'
wp option delete 'wgn_channel_username'
wp option delete 'wgn_send_to_channel'
wp option delete 'wgn_channel_pattern'
wp option delete 'wgn_send_thumb'
wp option delete 'wgn_hashtag'
wp option delete 'wgn_markdown'
wp option delete 'wgn_web_preview'
wp option delete 'wgn_img_position'
wp option delete 'wgn_excerpt_length'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgn_send_to_channel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgn_send_to_channel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgn_send_to_channel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgn_send_to_channel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgn_meta_pattern'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgn_meta_pattern'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgn_meta_pattern'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgn_meta_pattern'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgn_send_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgn_send_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgn_send_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgn_send_thumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgn_img_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgn_img_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgn_img_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgn_img_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgn_file_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgn_file_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgn_file_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgn_file_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wgn_meta_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wgn_meta_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wgn_meta_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wgn_meta_data'"
