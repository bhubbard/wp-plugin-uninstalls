#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apikey'
wp option delete 'secret'
wp option delete 'list'
wp option delete 'leadfox_apikey'
wp option delete 'leadfox_secret'
wp option delete 'leadfox_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
