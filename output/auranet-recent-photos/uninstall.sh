#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aura_recent_photos_user'
wp option delete 'aura_recent_photos_total_images'
wp option delete 'aura_recent_photos_backcolor'
wp option delete 'aura_recent_photos_img_width'
wp option delete 'aura_recent_photos_img_border'
wp option delete 'aura_recent_photos_border_color'
wp option delete 'aura_recent_photos_img_space'

