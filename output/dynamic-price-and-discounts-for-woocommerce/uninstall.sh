#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phoe_disc_value'
wp option delete 'phoen_backend_array'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phoen_woocommerce_discount_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phoen_woocommerce_discount_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phoen_woocommerce_discount_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phoen_woocommerce_discount_mode'"
