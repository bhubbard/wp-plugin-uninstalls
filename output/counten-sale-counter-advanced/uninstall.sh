#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'eddadv_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_sale_price_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_sale_price_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_sale_price_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_sale_price_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edd_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edd_price'"
