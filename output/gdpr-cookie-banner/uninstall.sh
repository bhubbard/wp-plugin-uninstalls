#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pp_cookie_popup_message'
wp option delete 'pp_banner_position'
wp option delete 'pp_banner_size'
wp option delete 'pp_banner_background_color'
wp option delete 'pp_banner_font'
wp option delete 'pp_banner_font_size'

