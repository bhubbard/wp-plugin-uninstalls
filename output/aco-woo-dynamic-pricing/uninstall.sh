#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awdp_time_zone_config'
wp option delete 'awdp_orderChange'
wp option delete 'awdp_settings_lang_options'
wp option delete 'awdp_pc_title'
wp option delete 'awdp_pc_label'
wp option delete 'awdp_qn_label'
wp option delete 'awdp_new_label'
wp option delete 'awdp_fee_label'
wp option delete 'awdp_message_status'
wp option delete 'awdp_discount_message'
wp option delete 'tableposition'
wp option delete 'awdp_table_position'
wp option delete 'awdp_table_sort'
wp option delete 'awdp_table_value'
wp option delete 'awdp_table_value_text'
wp option delete 'awdp_table_value_notext'
wp option delete 'awdp_tablefontsize'
wp option delete 'awdp_table_border'
wp option delete 'awdp_discount_description'
wp option delete 'awdp_discount_item_description'
wp option delete 'awdp_hide_coupon_box'
wp option delete 'awdp_disable_discount'
wp option delete 'awdp_disc_desc_config'
wp option delete 'awdp_addition_settings'
wp option delete 'awdp_new_config'
wp option delete 'awdp_custom_msg_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'itemCount'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_price_display_suffix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_schedules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_schedules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_schedules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_schedules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_quantityranges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_quantityranges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_quantityranges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_quantityranges'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_variation_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_variation_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_variation_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_variation_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_cartamount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_cartamount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_cartamount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_cartamount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_schedule_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_schedule_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_schedule_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_schedule_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_quantity_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_quantity_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_quantity_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_quantity_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_schedule_weekday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_schedule_weekday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_schedule_weekday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_schedule_weekday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_table_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_table_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_table_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_table_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_calc_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_calc_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_calc_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_calc_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_reg_customers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_reg_customers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_reg_customers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_reg_customers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_reg_user_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_reg_user_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_reg_user_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_reg_user_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_custom_pl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_custom_pl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_custom_pl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_custom_pl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_pricing_table'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_pricing_table'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_pricing_table'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_pricing_table'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dynamic_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dynamic_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dynamic_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dynamic_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_product_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_product_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_product_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_product_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'list_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_list_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_list_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_list_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_list_config'"
