#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'cmcw_box_margin'
wp option delete 'cmcw_count_size'
wp option delete 'cmcw_count_position'
wp option delete 'cmcw_icon_size'
wp option delete 'cmcw_count_bg_color'
wp option delete 'cmcw_text_color'
wp option delete 'cmcw_icon_color'
wp option delete 'cmcw_icon_name'

