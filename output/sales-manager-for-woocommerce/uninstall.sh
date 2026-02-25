#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsm_ignore_product_ids'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'wsm_check_launch_sales_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsm_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsm_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsm_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsm_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsm_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsm_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsm_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsm_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsm_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsm_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsm_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsm_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsm_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsm_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsm_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsm_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsm_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsm_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsm_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsm_filters'"
