#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable'"
wp option delete 'efw_mc_total_currencies'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_mc_currency_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_mc_enable_%'"
wp option delete 'efw_mc_display_format'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_mc_exchange_rate_%'"
wp option delete 'efw_cer_custom_currencies_total'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_cer_custom_currency_%'"
wp option delete 'efw_pa_total_no'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pa_enable_%'"
wp option delete 'efw_pf_total_no'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_enable_%'"
wp option delete 'efw_pif_global_total_no'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_enable_%'"
wp option delete 'efw_mc_show_available_variations'
wp option delete 'efw_mc_allow_empty_prices'
wp option delete 'efw_cer_update_frequency'
wp option delete 'efw_cer_last_updated'
wp option delete 'efw_cer_data_provider'
wp option delete 'efw_cer_fcc_api_key'
wp option delete 'efw_cer_percentage_adjustment'
wp option delete 'efw_cer_fixed_adjustment'
wp option delete 'efw_cer_rounding_enable'
wp option delete 'efw_cer_rounding_precision'
wp option delete 'efw_mc_per_product_enable'
wp option delete 'efw_mc_convert_shipping'
wp option delete 'efw_mc_rounding_method'
wp option delete 'efw_mc_rounding_precision'
wp option delete 'efw_mc_default_currency'
wp option delete 'efw_mc_cart_checkout_behavior'
wp option delete 'efw_pa_enable_per_pro'
wp option delete 'efw_pa_single_position'
wp option delete 'efw_pa_single_priority'
wp option delete 'efw_pa_enable_all_pro'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pa_enabled_cats_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pa_disable_cats_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pa_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pa_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pa_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pa_price_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_cart_min_amount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_cart_max_amount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_cart_min_qty_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_cart_max_qty_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_price_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pf_is_tax_%'"
wp option delete 'efw_pif_single_position'
wp option delete 'efw_pif_single_priority'
wp option delete 'efw_pif_cart_display'
wp option delete 'efw_pif_enable_per_pro'
wp option delete 'efw_pif_attach_admin_email'
wp option delete 'efw_pif_attach_customer_email'
wp option delete 'efw_pif_use_labels_admin'
wp option delete 'efw_pif_enable_global'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_placeholder_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_required_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_options_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_file_accept_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'efw_pif_global_file_max_size_%'"
wp option delete 'efw_pvs_enabled_cats'
wp option delete 'efw_pvs_disable_cats'
wp option delete 'efw_pvs_color_width'
wp option delete 'efw_pvs_color_height'
wp option delete 'efw_pvs_image_width'
wp option delete 'efw_pvs_image_height'
wp option delete 'efw_pvs_button_height'
wp option delete 'pvs_enable_tooltip'
wp option delete 'efw_pvs_style'

# Clear Cron Jobs
wp cron event delete 'efw_scheduled_rate_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efw_pa_total_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efw_pa_total_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efw_pa_total_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efw_pa_total_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pa_enable_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pa_enable_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pa_enable_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pa_enable_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efw_pif_total_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efw_pif_total_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efw_pif_total_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efw_pif_total_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_enable_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_enable_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_enable_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_enable_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efw_pt_total_no'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efw_pt_total_no'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efw_pt_total_no'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efw_pt_total_no'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pt_enable_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pt_enable_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pt_enable_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pt_enable_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_efw_mc_hide_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_efw_mc_hide_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_efw_mc_hide_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_efw_mc_hide_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_efw_mc_sale_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_efw_mc_sale_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_efw_mc_sale_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_efw_mc_sale_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_efw_mc_regular_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_efw_mc_regular_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_efw_mc_regular_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_efw_mc_regular_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_efw_mc_enable_per_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_efw_mc_enable_per_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_efw_mc_enable_per_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_efw_mc_enable_per_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efw_pa_enable_per_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efw_pa_enable_per_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efw_pa_enable_per_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efw_pa_enable_per_pro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pa_type_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pa_type_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pa_type_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pa_type_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pa_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pa_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pa_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pa_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pa_label_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pa_label_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pa_label_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pa_label_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pa_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pa_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pa_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pa_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efw_pif_enable_per_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efw_pif_enable_per_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efw_pif_enable_per_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efw_pif_enable_per_pro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_title_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_title_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_title_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_title_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_type_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_type_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_type_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_type_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_placeholder_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_placeholder_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_placeholder_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_placeholder_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_required_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_required_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_required_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_required_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_select_options_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_select_options_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_select_options_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_select_options_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_file_accept_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_file_accept_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_file_accept_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_file_accept_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'efw_pif_file_max_size_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'efw_pif_file_max_size_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'efw_pif_file_max_size_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'efw_pif_file_max_size_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efw_pvs_attr_item_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efw_pvs_attr_item_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efw_pvs_attr_item_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efw_pvs_attr_item_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efw_pvs_attr_item_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efw_pvs_attr_item_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efw_pvs_attr_item_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efw_pvs_attr_item_color'"
