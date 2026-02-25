#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sps_sidebar_page_switcher'
wp option delete 'sps_hierarchical_display'
wp option delete 'sps_trim_breaks'
wp option delete 'sps_minimum_user_level'
wp option delete 'sps_search_static_pages'
wp option delete 'sps_standard_separator'
wp option delete 'sps_list_archives'
wp option delete 'sps_date_prefix'
wp option delete 'sps_widget_archives'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sps_show_in_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sps_show_in_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sps_show_in_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sps_show_in_sidebar'"
