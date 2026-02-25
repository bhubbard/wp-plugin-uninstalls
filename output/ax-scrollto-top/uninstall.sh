#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ax_icon_select'
wp option delete 'ax_width'
wp option delete 'ax_height'
wp option delete 'ax_background_color'
wp option delete 'ax_text_color'
wp option delete 'ax_font_size'
wp option delete 'ax_padding'

