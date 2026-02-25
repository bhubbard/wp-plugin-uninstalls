#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flas_game_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flash_game_post_shortcode_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flash_game_post_shortcode_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flash_game_post_shortcode_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flash_game_post_shortcode_key'"
