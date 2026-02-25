#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'toplist_cz_version'
wp option delete 'widget_toplist_cz'
wp option delete 'toplist_cz_dashboard_widget_user_level'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'toplist-cache-%'"
wp option delete 'sidebars_widgets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta-box-order_dashboard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta-box-order_dashboard'"
