#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'cps_plan_pricing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chargely-plan-table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chargely-plan-table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chargely-plan-table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chargely-plan-table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chargely_plugin_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chargely_plugin_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chargely_plugin_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chargely_plugin_setting'"
