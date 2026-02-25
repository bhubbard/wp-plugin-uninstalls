#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eu_cookie_text_color'
wp option delete 'eu_cookie_bg_color'
wp option delete 'eu_cookie_animation_type'
wp option delete 'eu_cookie_message'

