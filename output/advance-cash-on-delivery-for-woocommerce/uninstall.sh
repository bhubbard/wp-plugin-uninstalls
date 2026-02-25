#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coderockz_advance_cod_restriction_settings'
wp option delete 'coderockz_advance_cod_localization_settings'
wp option delete 'coderockz_advance_cod_large_product_list'
wp option delete 'coderockz-wc-advance-cod-free-activation-time'
wp option delete 'coderockz-woo-delivery-license-status'
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
