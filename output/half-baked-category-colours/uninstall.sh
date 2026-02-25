#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pg_cat_colors_enable_pills'
wp option delete 'pg_cat_colors_enable_tint'
wp option delete 'pg_cat_colors_enable_underline'
wp option delete 'pg_cat_colors_default_color'
wp option delete 'pg_cat_colors_pill_gap'
wp option delete 'pg_cat_colors_border_thickness'
wp option delete 'pg_cat_colors_pill_shape'
wp option delete 'pg_cat_colors_case_storage'
wp option delete 'pg_cat_colors_case_auto'
wp option delete 'pg_cat_colors_case_display'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pg_category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pg_category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pg_category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pg_category_color'"
