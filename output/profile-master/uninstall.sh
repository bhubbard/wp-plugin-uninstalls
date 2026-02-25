#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wps_presentation_input_one_text'
wp option delete 'wps_presentation_input_one_url'
wp option delete 'wps_presentation_input_two_text'
wp option delete 'wps_presentation_input_two_url'
wp option delete 'wps_presentation_input_three_text'
wp option delete 'wps_presentation_input_three_url'
wp option delete 'wps_presentation_input_four_text'
wp option delete 'wps_presentation_input_four_url'
wp option delete 'wps_presentation_hide_frontend_color_switcher'
wp option delete 'wps_presentation_colors'
wp option delete 'wps_presentation_bg_custom_css'
wp option delete 'wps_presentation_custom_css'
wp option delete 'wps_presentation_live_site_link'
wp option delete 'wps_presentation_support_link'
wp option delete 'wps_presentation_buy_now_link'

