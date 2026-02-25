#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elcwg_enable_carousel'
wp option delete 'elcwg_carousel_autoplay'
wp option delete 'elcwg_carousel_loop'
wp option delete 'elcwg_carousel_autoplay_delay'
wp option delete 'elcwg_text_animation_delay'
wp option delete 'elcwg_caption_font_size'

