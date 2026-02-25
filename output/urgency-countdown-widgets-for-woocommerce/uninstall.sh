#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'urgcw_urgency_countdown_timers'
wp option delete 'urgcw_urgency_countdown_animation'
wp option delete 'urgcw_urgency_countdown_look'
wp option delete 'urgcw_urgency_font_color'
wp option delete 'urgcw_urgency_font_family'
wp option delete 'urgcw_urgency_bg_color'
wp option delete 'urgcw_urgency_widgets'
wp option delete 'urgcw_global_urgency_widget_enabled'

# Delete Transients
wp transient delete 'urgcw_show_woocommerce_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
