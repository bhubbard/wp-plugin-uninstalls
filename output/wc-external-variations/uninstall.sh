#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcev_external_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcev_external_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcev_external_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcev_external_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcev_external_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcev_external_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcev_external_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcev_external_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcev_external_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcev_external_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcev_external_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcev_external_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcev_external_add_to_cart_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcev_external_add_to_cart_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcev_external_add_to_cart_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcev_external_add_to_cart_text'"
