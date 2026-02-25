#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psres_max_image_width'
wp option delete 'psres_max_image_height'
wp option delete 'psres_thumbnail_crop'
wp option delete 'psres_num_thumb'
wp option delete 'psres_show_captions'
wp option delete 'psres_show_controls'
wp option delete 'psres_auto_play'
wp option delete 'psres_hide_thumbs'
wp option delete 'psres_delay'
wp option delete 'psres_enable_history'
wp option delete 'psres_play_text'
wp option delete 'psres_pause_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'psres_reset_css'
wp option delete 'psres_thumbnail_width'
wp option delete 'psres_thumbnail_height'
wp option delete 'psres_button_size'
wp option delete 'psres_thumbnail_margin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
