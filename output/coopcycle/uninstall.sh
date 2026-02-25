#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coopcycle_free_shipping'
wp option delete 'coopcycle_app_name'
wp option delete 'coopcycle_base_url'
wp option delete 'coopcycle_api_key'
wp option delete 'coopcycle_api_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
