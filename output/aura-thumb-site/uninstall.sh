#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aura_thumb_site_url'
wp option delete 'aura_thumb_site_backcolor'
wp option delete 'aura_thumb_site_effect'
wp option delete 'aura_thumb_site_speed'
wp option delete 'aura_thumb_site_opacity'
wp option delete 'aura_thumb_site_img_width'
wp option delete 'aura_thumb_site_img_border'
wp option delete 'aura_thumb_site_border_color'
wp option delete 'aura_thumb_site_img_space'
wp option delete 'aura_thumb_site_title_size'

