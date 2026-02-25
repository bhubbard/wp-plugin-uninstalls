#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mono_gateway_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ccy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ccy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ccy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ccy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_amount_final'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_amount_final'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_amount_final'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_amount_final'"
