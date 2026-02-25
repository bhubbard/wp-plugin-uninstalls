#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wfwp_wc_order_status_admin_order_actions_processing_override'
wp option delete 'wfwp_wc_order_status_admin_order_actions_processing_has_status'
wp option delete 'wfwp_wc_order_status_admin_order_actions_complete_override'
wp option delete 'wfwp_wc_order_status_admin_order_actions_complete_has_status'
wp option delete 'wfwp_wc_order_status_sorting_custom'
wp option delete 'wfwp_wc_order_status_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
