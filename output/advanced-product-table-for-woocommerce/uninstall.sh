#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'it_black_friday_banner_dismissed'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'iwptp_editor_theme'
wp option delete 'iwptpl_some_setting'
wp option delete 'iwptpl_usage_track'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_subscription_sent'"
wp option delete 'ithemeland_activation_email'
wp option delete 'iwptpl_onboarding'
wp option delete 'iwptpl_opt_in'
wp option delete 'woocommerce_price_display_suffix'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'woocommerce_currency_pos'
wp option delete 'waveplayer_skin'
wp option delete 'alg_wc_pq_step_section_enabled'
wp option delete 'alg_wc_pq_step'
wp option delete 'wcqv_options'
wp option delete 'ced_hpul_enable_hide_price'
wp option delete 'ced_hp_password_for_price'
wp option delete 'ced_hpr_role'
wp option delete 'woocommerce_price_trim_zeros'
wp option delete 'wcb2b_hide_prices'
wp option delete 'addify_atq_page_id'
wp option delete 'afrfq_view_button_message'
wp option delete 'enable_o_o_s_products'
wp option delete 'afrfq_pro_success_message'
wp option delete 'wwpp_settings_hide_quantity_discount_table'
wp option delete 'wwp_hide_price_add_to_cart'
wp option delete 'wwp_price_and_add_to_cart_replacement_message'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_add_to_cart_button_text'"
wp option delete 'iwptp_settings'
wp option delete 'iwptp_sessions_db_version'
wp option delete 'iwptpl_is_active'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_iwptp_variations_%' OR option_name LIKE '_site_transient_iwptp_variations_%'"

# Clear Cron Jobs
wp cron event delete 'iwptp_cleanup_sessions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iwptp_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iwptp_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iwptp_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iwptp_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_sales'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_preview_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_preview_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_preview_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_preview_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_available_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_available_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_available_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_available_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upcoming'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upcoming'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upcoming'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upcoming'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_is_hide_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_is_hide_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_is_hide_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_is_hide_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_hide_price_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_hide_price_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_hide_price_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_hide_price_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_is_hide_addtocart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_is_hide_addtocart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_is_hide_addtocart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_is_hide_addtocart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_custom_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_custom_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_custom_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_custom_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_custom_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_custom_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_custom_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_custom_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_rule_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_rule_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_rule_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_rule_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_hide_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_hide_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_hide_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_hide_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_hide_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_hide_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_hide_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_hide_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_hide_user_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_hide_user_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_hide_user_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_hide_user_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'afrfq_apply_on_all_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'afrfq_apply_on_all_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'afrfq_apply_on_all_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'afrfq_apply_on_all_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iwptp_preset_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iwptp_preset_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iwptp_preset_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iwptp_preset_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iwptp_preset_applied__message_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iwptp_preset_applied__message_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iwptp_preset_applied__message_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iwptp_preset_applied__message_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iwptp_preset_applied__slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iwptp_preset_applied__slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iwptp_preset_applied__slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iwptp_preset_applied__slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iwptp_fonts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iwptp_fonts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iwptp_fonts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iwptp_fonts'"
