#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'different_roles_select'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%dsabafwerror' OR option_name LIKE '_site_transient_%dsabafwerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
