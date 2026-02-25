#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buy_now_button_text'
wp option delete 'buy_now_button_bg_color'
wp option delete 'buy_now_button_text_color'
wp option delete 'buy_now_button_margin_top'
wp option delete 'buy_now_button_padding'
wp option delete 'buy_now_button_border_color'
wp option delete 'buy_now_button_border_width'
wp option delete 'buy_now_button_font_size'
wp option delete 'buy_now_button_font_weight'
wp option delete 'buy_now_button_border_radius'

