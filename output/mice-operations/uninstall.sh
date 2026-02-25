#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mice_widget_id'
wp option delete 'mice_style_color'
wp option delete 'mice_button_alignment'
wp option delete 'mice_source'
wp option delete 'mice_button_horizontal_padding'
wp option delete 'mice_button_vertical_padding'
wp option delete 'mice_enable_button'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mice_widget_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mice_widget_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mice_widget_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mice_widget_id'"
