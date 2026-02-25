#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themeidol_options'
wp option delete 'themeidol-recent-posts'

# Delete Transients
wp transient delete 'themeidol_pointers'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_themeidol-instagm-%' OR option_name LIKE '_site_transient_themeidol-instagm-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeidol_tab_widget_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeidol_tab_widget_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeidol_tab_widget_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeidol_tab_widget_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_themeidol_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_themeidol_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_themeidol_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_themeidol_view_count'"
