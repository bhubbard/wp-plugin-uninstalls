#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'viwebpos_receipts_params'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'viwebpos_params'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_prefix'"
wp option delete 'woocommerce_calc_discounts_sequentially'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_prices_include_tax'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_use'"
wp option delete 'villatheme_hide_admin_toolbar'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%'"
wp option delete 'viwebpos_update_database'

# Delete Transients
wp transient delete 'villatheme_call'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_hide_notices' OR option_name LIKE '_site_transient_%_hide_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_villatheme_hide_notices_%' OR option_name LIKE '_site_transient_villatheme_hide_notices_%'"
wp transient delete 'villatheme_notices'
wp transient delete 'villatheme_called'
wp transient delete 'villatheme_ads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viwebpos_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viwebpos_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viwebpos_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viwebpos_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
