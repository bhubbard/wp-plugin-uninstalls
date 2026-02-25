#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_enable_coupons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cb_delete_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cb_delete_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cb_delete_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cb_delete_at'"
