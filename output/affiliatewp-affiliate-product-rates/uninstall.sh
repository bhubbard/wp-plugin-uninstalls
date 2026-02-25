#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affwp_version'
wp option delete 'affwp_apr_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affwp_product_rates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affwp_product_rates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affwp_product_rates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affwp_product_rates'"
