#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ship_to_countries'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'stripe_tax_migration'
wp option delete 'stripe_tax_string_tax_rate_id_fixer_as_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_num_processed_orders'"

# Delete Transients
wp transient delete 'stripe_tax_for_woocommerce_settings_update_error_flag'
wp transient delete 'stripe_tax_for_woocommerce_activate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tax_exemption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_class'"
