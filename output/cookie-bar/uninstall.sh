#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookie_bar_show_for_logged_out_users_only'
wp option delete 'cookie_bar_show_on_top'
wp option delete 'cookie_bar_expiration_type'
wp option delete 'cookie_bar_days_to_expire'
wp option delete 'cookie_bar_message'
wp option delete 'cookie_bar_button'
wp option delete 'cookie_bar_btn_bg_colour'
wp option delete 'cookie_bar_btn_font_colour'
wp option delete 'cookie_bar_bar_bg_colour'
wp option delete 'cookie_bar_bar_font_colour'

