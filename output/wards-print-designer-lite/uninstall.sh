#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wc_pao_activation_notice'
wp transient delete 'wc_pao_pre_wc_30_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_product_customizable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_product_customizable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_product_customizable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_product_customizable'"
