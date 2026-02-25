#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avelon_account_id'
wp option delete 'avelon_api_token'
wp option delete 'woocommerce_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avln_cid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avln_cid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avln_cid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avln_cid'"
