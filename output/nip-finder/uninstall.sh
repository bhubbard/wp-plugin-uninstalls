#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nip_finder_api_key'
wp option delete 'nip_finder_subscription_type'
wp option delete 'nip_finder_getting_nip'
wp option delete 'nip_finder_getting_postal_codes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nip'"
