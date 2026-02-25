#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_wonderful_payments_gateway_settings'
wp option delete 'wonderful_payments_uuid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderful_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderful_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderful_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderful_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderful_payment_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderful_payment_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderful_payment_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderful_payment_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wonderful_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wonderful_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wonderful_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wonderful_order_id'"
