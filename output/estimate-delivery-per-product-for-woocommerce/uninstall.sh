#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_settings'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_date_simple'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_date_simple'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_date_simple'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_date_simple'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_date_var'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_date_var'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_date_var'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_date_var'"
