#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wctym_custom_message'
wp option delete 'wctym_message_position'
wp option delete 'wctym_bg_color'
wp option delete 'wctym_text_color'
wp option delete 'wctym_border_radius'

