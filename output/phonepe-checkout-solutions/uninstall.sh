#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_phonepe_expressbuy_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
