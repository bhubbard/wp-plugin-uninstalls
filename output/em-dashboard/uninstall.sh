#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'em_dashboard_force_easy_capability'
wp option delete 'em_dashboard_load_easy'
wp option delete 'em_dashboard_force_easy'
wp option delete 'em_dashboard_color_scheme'
wp option delete 'em_dashboard_em_styles'
wp option delete 'em_dashboard_color_picker'
wp option delete 'em_dashboard_nodes_allowed'
wp option delete 'em_dashboard_nodes_delete'
wp option delete 'em_dashboard_nodes_sub_delete'
wp option delete 'em_dashboard_nodes_meta_dashboard'
wp option delete 'em_dashboard_nodes_meta_link'
wp option delete 'em_dashboard_nodes_meta_post'
wp option delete 'em_dashboard_nodes_meta_plugin'
wp option delete 'em_dashboard_em_fonts'
wp option delete 'em_dashboard_easy_mode'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'em_dashboard_easy_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'em_dashboard_easy_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'em_dashboard_easy_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'em_dashboard_easy_mode'"
