#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_currency_pos'
wp option delete 'api_flexible-product-fields-pro_activated'
wp option delete 'wpdesk_helper_options'
wp option delete 'wpdesk_tracker_skip_flexible_product_fields'
wp option delete 'wpdesk_tracker_notice'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tag_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tag_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tag_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tag_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_excluded_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_excluded_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_excluded_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_excluded_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_excluded_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_excluded_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_excluded_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_excluded_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_excluded_tag_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_excluded_tag_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_excluded_tag_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_excluded_tag_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_assign_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_assign_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_assign_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_assign_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_section'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_section'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_section'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_section'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
