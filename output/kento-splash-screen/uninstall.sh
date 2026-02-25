#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kento_splash_screen_demo'
wp option delete 'kento_splash_screen_bg_color'
wp option delete 'kento_splash_screen_bg_img'
wp option delete 'kento_splash_screen_border_size'
wp option delete 'kento_splash_screen_border_color'
wp option delete 'kento_splash_screen_content'
wp option delete 'kento_splash_screen_width'
wp option delete 'kento_splash_screen_height'
wp option delete 'kento_splash_screen_left'

