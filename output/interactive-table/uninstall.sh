#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'it_block_heading_position'
wp option delete 'it_cell_title_color'
wp option delete 'it_cell_hover_title_color'
wp option delete 'it_cell_font_color'
wp option delete 'it_cell_hover_font_color'
wp option delete 'it_read_more_font_color'
wp option delete 'it_display_mode'
wp option delete 'it_highlight_mode'
wp option delete 'cell_highlight_color'
wp option delete 'it_single_cell_slug_url'
wp option delete 'it_cell_hover'
wp option delete 'it_title_hover'
wp option delete 'it_read_more'
wp option delete 'readmore_label'
wp option delete 'it_load_default_css'
wp option delete 'it_vertical_posts_per_row'
wp option delete 'fixed_highlight'
wp option delete 'it_clean_on_deactive'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_it_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_it_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_it_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_it_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_it_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_it_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_it_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_it_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_it_cell_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_it_cell_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_it_cell_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_it_cell_class'"
