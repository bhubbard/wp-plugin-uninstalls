#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gmwcpkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gmwcpkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gmwcpkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gmwcpkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmwcp_exclude_product_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmwcp_exclude_product_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmwcp_exclude_product_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmwcp_exclude_product_single'"
