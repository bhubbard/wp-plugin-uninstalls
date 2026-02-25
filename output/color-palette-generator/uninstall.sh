#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpg_options'
wp option delete 'cpg_dominant_color_children'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpg_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpg_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpg_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpg_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpg_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpg_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpg_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpg_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpg_show_dominant'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpg_show_dominant'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpg_show_dominant'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpg_show_dominant'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cpg_number_of_colors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cpg_number_of_colors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cpg_number_of_colors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cpg_number_of_colors'"
