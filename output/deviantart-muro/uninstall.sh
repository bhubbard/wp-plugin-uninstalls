#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'damuro_comments'
wp option delete 'damuro_default_background'
wp option delete 'damuro_stash_folder'
wp option delete 'damuro_sandbox_url'
wp option delete 'damuro_default_width'
wp option delete 'damuro_default_height'
wp option delete 'damuro_default_canvas_width'
wp option delete 'damuro_default_canvas_height'
wp option delete 'damuro_comment_moderation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deviantart_muro_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deviantart_muro_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deviantart_muro_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deviantart_muro_image'"
