#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'strpgn_apply_to'
wp option delete 'strpgn_star_color_empty'
wp option delete 'strpgn_star_color_filled'
wp option delete 'strpgn_star_color_hover'
wp option delete 'strpgn_container_alignment'
wp option delete 'strpgn_star_size'
wp option delete 'strpgn_average_font_size'
wp option delete 'strpgn_average_margin_top'
wp option delete 'strpgn_average_margin_right'
wp option delete 'strpgn_average_margin_bottom'
wp option delete 'strpgn_average_margin_left'
wp option delete 'strpgn_stars_margin_top'
wp option delete 'strpgn_stars_margin_right'
wp option delete 'strpgn_stars_margin_bottom'
wp option delete 'strpgn_stars_margin_left'
wp option delete 'strpgn_details_font_size'
wp option delete 'strpgn_total_margin_top'
wp option delete 'strpgn_total_margin_right'
wp option delete 'strpgn_total_margin_bottom'
wp option delete 'strpgn_total_margin_left'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'strpgn_hide_auto_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'strpgn_hide_auto_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'strpgn_hide_auto_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'strpgn_hide_auto_display'"
