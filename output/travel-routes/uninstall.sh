#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'travel_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'route_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'route_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'route_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'route_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'route_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'route_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'route_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'route_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'route_dashed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'route_dashed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'route_dashed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'route_dashed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'route_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'route_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'route_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'route_%'"
