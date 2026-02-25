#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quaderno_dismiss_review'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_shipping_tax_class'
wp option delete 'woocommerce_tax_display_cart'

# Delete Transients
wp transient delete 'quaderno_error'
wp transient delete 'last_tax_class'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quaderno_contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quaderno_contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quaderno_contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quaderno_contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_tax_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_tax_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_tax_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_tax_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quaderno_vat_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quaderno_vat_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quaderno_vat_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quaderno_vat_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quaderno_tax_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quaderno_tax_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quaderno_tax_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quaderno_tax_id'"
