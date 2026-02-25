#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsm_wrap_width'
wp option delete 'wpsm_background'
wp option delete 'wpsm_background_hover'
wp option delete 'wpsm_font_color'
wp option delete 'wpsm_font_color_hover'
wp option delete 'wpsm_logo'
wp option delete 'wpsm_social_btns'
wp option delete 'wpsm_facebook'
wp option delete 'wpsm_twitter'

