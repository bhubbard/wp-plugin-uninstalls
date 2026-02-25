#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_moip_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_moip_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_moip_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_moip_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_moip_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_moip_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_moip_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_moip_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_moip_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_moip_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_moip_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_moip_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_moip_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_moip_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_moip_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_moip_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_moip_url'"
