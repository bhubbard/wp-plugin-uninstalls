#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'repliii_enabled'
wp option delete 'repliii_user_id'
wp option delete 'repliii_button_color'
wp option delete 'repliii_button_opacity'
wp option delete 'repliii_header_title'
wp option delete 'repliii_header_bg'
wp option delete 'repliii_header_text'
wp option delete 'repliii_placeholder'
wp option delete 'repliii_svg_logo'

