#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xn_wppe_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xn-wppe-expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xn-wppe-expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xn-wppe-expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xn-wppe-expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xn-wppe-expiration-action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xn-wppe-expiration-action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xn-wppe-expiration-action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xn-wppe-expiration-action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xn-wppe-expiration-prefix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xn-wppe-expiration-prefix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xn-wppe-expiration-prefix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xn-wppe-expiration-prefix'"
