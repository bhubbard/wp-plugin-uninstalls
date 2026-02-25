#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'g_woocoupons_configs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gna_available_day_of_week'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gna_available_day_of_week'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gna_available_day_of_week'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gna_available_day_of_week'"
