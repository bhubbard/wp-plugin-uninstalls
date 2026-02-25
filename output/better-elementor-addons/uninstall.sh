#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bea_settings'
wp option delete 'woocommerce_default_catalog_orderby'
wp option delete 'woocommerce_enable_review_rating'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
