#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'jalpi_ln_country_list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jalpi_ln_fallback_%' OR option_name LIKE '_site_transient_jalpi_ln_fallback_%'"
wp transient delete 'jalpi_ln_last_cache_cleanup'
wp transient delete 'jalpi_ln_fallback_country_list'
wp transient delete 'jalpi_ln_logs_buffer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
