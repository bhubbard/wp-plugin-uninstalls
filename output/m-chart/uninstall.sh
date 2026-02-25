#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'm-chart'
wp option delete 'm_chart_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'm-chart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'm-chart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'm-chart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'm-chart'"
