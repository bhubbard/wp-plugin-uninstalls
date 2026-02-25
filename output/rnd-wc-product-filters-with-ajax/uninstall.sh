#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rndapf_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_tax_display_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
