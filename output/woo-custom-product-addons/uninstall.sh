#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpa_settings_%' OR option_name LIKE '_site_transient_wcpa_settings_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcpa_fields_%' OR option_name LIKE '_site_transient_wcpa_fields_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpa_exclude_global_forms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpa_exclude_global_forms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpa_exclude_global_forms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpa_exclude_global_forms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpa_product_meta_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpa_product_meta_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpa_product_meta_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpa_product_meta_order'"
