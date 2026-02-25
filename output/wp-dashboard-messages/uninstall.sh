#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dashboard-messages_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_expires_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_expires_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_expires_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_expires_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dashboard_expires_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dashboard_expires_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dashboard_expires_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dashboard_expires_gmt'"
