#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zvi_callback_title'
wp option delete 'zvi_callback_subtitle'
wp option delete 'zvi_callback_color'
wp option delete 'zvi_callback_color_hover'
wp option delete 'zvi_callback_email'
wp option delete 'zvi_callback_url'
wp option delete 'zvi_callback_shortcode'
wp option delete 'zvi_callback_img'
wp option delete 'zvi_callback_telegram_id'
wp option delete 'zvi_callback_telegram_token'
wp option delete 'zvi_callback_telegram_send'
wp option delete 'zvi_callback_left'
wp option delete 'zvi_callback_color_text'

