#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'itsjp_activation_result'
wp option delete 'itsjpp_license_key'
wp option delete 'itsjpp_local_key'
wp option delete 'itsjp_last_runtime'
wp option delete 'itsjp-pricebreakup-settings'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency_pos'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_var_prices_%' OR option_name LIKE '_site_transient_wc_var_prices_%'"
wp transient delete 'itsjp_after_install_notice'
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_jewellery_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_jewellery_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_jewellery_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_jewellery_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'its_jp_pearl_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'its_jp_pearl_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'its_jp_pearl_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'its_jp_pearl_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'its_jp_extra_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'its_jp_extra_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'its_jp_extra_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'its_jp_extra_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'its_jp_other_stone_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'its_jp_other_stone_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'its_jp_other_stone_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'its_jp_other_stone_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'its_jp_extra_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'its_jp_extra_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'its_jp_extra_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'its_jp_extra_fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_text_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_text_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_text_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_text_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
