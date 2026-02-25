#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'truebooker_db_version'
wp option delete 'truebooker_skin_color'
wp option delete 'truebooker_dark_color'
wp option delete 'truebooker_body_color'
wp option delete 'truebooker_white_color'
wp option delete 'truebooker_black_color'
wp option delete 'truebooker_cl_lightdark'
wp option delete 'truebooker_gray_color'
wp option delete 'truebooker_border_color'
wp option delete 'truebooker_active_skin'
wp option delete 'truebooker_font_family'

