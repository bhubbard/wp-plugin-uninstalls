#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chatfloat_number'
wp option delete 'chatfloat_text'
wp option delete 'chatfloat_prefill_message'
wp option delete 'chatfloat_position'
wp option delete 'chatfloat_bg_color'
wp option delete 'chatfloat_text_color'
wp option delete 'chatfloat_display_desktop'
wp option delete 'chatfloat_display_mobile'
wp option delete 'chatfloat_darkmode'
wp option delete 'chatfloat_top_margin'
wp option delete 'chatfloat_bottom_margin'
wp option delete 'chatfloat_horizontal_margin'

