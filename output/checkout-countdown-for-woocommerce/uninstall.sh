#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccfwoo_general_section'
wp option delete 'ccfwoo_enable_countdown'
wp option delete 'ccfwoo_minutes'
wp option delete 'ccfwoo_countdown_style'
wp option delete 'ccfwoo_before_countdown'
wp option delete 'ccfwoo_inbetween_countdown'
wp option delete 'ccfwoo_after_countdown'
wp option delete 'ccfwoo_expired_text'
wp option delete 'ccfwoo_style_bg_color'
wp option delete 'ccfwoo_style_font_color'
wp option delete 'ccfwoo_enable_banner_message'
wp option delete 'ccfwoo_banner_message'

