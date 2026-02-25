#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'active_sitewide_plugins'
wp option delete 'woo_variation_swatches'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_tooltip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_tooltip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_tooltip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_tooltip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tooltip_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tooltip_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tooltip_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tooltip_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tooltip_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tooltip_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tooltip_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tooltip_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_attachment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_dual_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'secondary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'group_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'group_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'group_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'group_name'"
