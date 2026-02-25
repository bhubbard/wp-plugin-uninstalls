#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcmnd_gso'
wp option delete 'rcmnd_aso'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcmnd_product_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcmnd_product_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcmnd_product_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcmnd_product_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rcmnd_product_sync_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rcmnd_product_sync_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rcmnd_product_sync_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rcmnd_product_sync_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcmnd_conversion_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcmnd_conversion_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcmnd_conversion_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcmnd_conversion_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcmnd_conversion_ssnid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcmnd_conversion_ssnid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcmnd_conversion_ssnid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcmnd_conversion_ssnid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcmnd_conversion_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcmnd_conversion_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcmnd_conversion_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcmnd_conversion_id'"
