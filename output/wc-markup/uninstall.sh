#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_markup_sale_price'
wp option delete 'mcfwc_plugin_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_markup_admin_error_%' OR option_name LIKE '_site_transient_wc_markup_admin_error_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price_for_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price_for_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price_for_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price_for_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_markup_pricing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_markup_pricing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_markup_pricing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_markup_pricing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'markup_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'markup_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'markup_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'markup_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'markup_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'markup_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'markup_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'markup_price'"
