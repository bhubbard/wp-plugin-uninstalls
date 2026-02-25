#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_esto_settings'
wp option delete 'esto_calculator_enabled'
wp option delete 'esto_calculator_hook'
wp option delete 'esto_calculator_type'
wp option delete 'esto_calculator_esto3_months'
wp option delete 'esto_calculator_show_logo'
wp option delete 'esto_calculator_whitelabel'
wp option delete 'esto_calculator_show_on_loop'
wp option delete 'esto_calculator_show_on_product'
wp option delete 'esto_calculator_monthly_payment_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'esto_custom_logo_hire_purchase_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'esto_custom_logo_esto_x_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'esto_enable_deals_tracking'
wp option delete 'everflow_advertiser_id'
wp option delete 'everflow_advertiser_id_lv'
wp option delete 'everflow_advertiser_id_lt'
wp option delete 'everflow_ef_region_token'
wp option delete 'everflow_ef_region_token_lv'
wp option delete 'everflow_ef_region_token_lt'
wp option delete 'esto_default_country'
wp option delete 'everflow_advertiser_id_ee'
wp option delete 'everflow_ef_region_token_ee'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%esto_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_esto_purchase_url_timeout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_esto_purchase_url_timeout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_esto_purchase_url_timeout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_esto_purchase_url_timeout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_esto_purchase_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_esto_purchase_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_esto_purchase_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_esto_purchase_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_esto_purchase_url_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_esto_purchase_url_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_esto_purchase_url_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_esto_purchase_url_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_esto_purchase_url_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_esto_purchase_url_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_esto_purchase_url_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_esto_purchase_url_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_esto_purchase_url_payment_method_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_esto_purchase_url_payment_method_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_esto_purchase_url_payment_method_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_esto_purchase_url_payment_method_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'esto_order_nr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'esto_order_nr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'esto_order_nr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'esto_order_nr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'esto_prefixed_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'esto_prefixed_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'esto_prefixed_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'esto_prefixed_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'esto_preferred_bank'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'esto_preferred_bank'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'esto_preferred_bank'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'esto_preferred_bank'"
