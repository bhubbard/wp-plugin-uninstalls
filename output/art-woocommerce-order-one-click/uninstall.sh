#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_awooc_active'
wp option delete 'woocommerce_awooc_text_rated'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_awooc_mode_catalog'
wp option delete 'woocommerce_awooc_output_catalog'
wp option delete 'woocommerce_awooc_title_button'
wp option delete 'woocommerce_awooc_title_custom'
wp option delete 'woocommerce_awooc_select_form'
wp option delete 'woocommerce_placeholder_image'
wp option delete 'woocommerce_awooc_change_subject'
wp option delete 'woocommerce_awooc_enable_letter_template'
wp option delete 'woocommerce_awooc_created_order'
wp option delete 'woocommerce_awooc_change_name'
wp option delete 'woocommerce_awooc_not_del_settings'
wp option delete 'woocommerce_awooc_select_item'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
