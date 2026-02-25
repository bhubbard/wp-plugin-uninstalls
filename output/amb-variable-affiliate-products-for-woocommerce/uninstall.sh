#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amb_wcvap_empty_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amb_wpvap_variation_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amb_wpvap_variation_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amb_wpvap_variation_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amb_wpvap_variation_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amb_vap_prod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amb_vap_prod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amb_vap_prod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amb_vap_prod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amb_vap_prod_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amb_vap_prod_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amb_vap_prod_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amb_vap_prod_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_amb_vap_prod_cart_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_amb_vap_prod_cart_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_amb_vap_prod_cart_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_amb_vap_prod_cart_text'"
