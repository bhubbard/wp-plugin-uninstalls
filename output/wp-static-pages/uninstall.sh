#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsp_ref_time'

# Clear Cron Jobs
wp cron event delete 'wpsp_plugin_cron_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsp_is_static'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsp_is_static'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsp_is_static'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsp_is_static'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsp_cat_is_static'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsp_cat_is_static'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsp_cat_is_static'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsp_cat_is_static'"
