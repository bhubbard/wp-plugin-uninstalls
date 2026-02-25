#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpt_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpt_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpt_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpt_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_tab_widget_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_tab_widget_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_tab_widget_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_tab_widget_ignore_notice'"
