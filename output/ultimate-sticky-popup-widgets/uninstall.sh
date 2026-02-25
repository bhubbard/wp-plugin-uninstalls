#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uspaw_button_layout'
wp option delete 'uspaw_popup_active'
wp option delete 'uspaw_social_share_active'
wp option delete 'uspaw_popup_title'
wp option delete 'uspaw_popup_color'
wp option delete 'uspaw_popup_image'
wp option delete 'uspaw_popup_right_icon_border'
wp option delete 'uspaw_popup_header_color'
wp option delete 'uspaw_popup_header_border_color'
wp option delete 'uspaw_popup_place'
wp option delete 'uspaw_popup_top_margin'
wp option delete 'uspaw_popup_content'

