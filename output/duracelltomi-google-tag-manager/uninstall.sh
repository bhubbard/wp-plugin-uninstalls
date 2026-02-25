#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gtm4wp-weatherdata-%' OR option_name LIKE '_site_transient_gtm4wp-weatherdata-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gtm4wp-geodata-%' OR option_name LIKE '_site_transient_gtm4wp-geodata-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'rank_math_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'rank_math_primary_%'"
