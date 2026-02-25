#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbns_message_input'
wp option delete 'cbns_custom_css_input'
wp option delete 'cbns_display_attribute'
wp option delete 'cbns_margin'
wp option delete 'cbns_font_size'
wp option delete 'cbns_text_color'

