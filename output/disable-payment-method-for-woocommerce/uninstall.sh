#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pisol_logged_gateways'
wp option delete 'pi_dpmw_allow_shop_manager'
wp option delete 'pisol_dpmw_show_system_name'
wp option delete 'pi_dpmw_do_activation_redirect'
wp option delete 'pisol_dpmw_email_blocked_msg'
wp option delete 'pisol_dpmw_ip_blocked_msg'
wp option delete 'pi_dpmw_pp_bg_color'
wp option delete 'pi_dpmw_pp_txt_color'
wp option delete 'pi_dpmw_pp_border_color'
wp option delete 'pi_dpmw_pp_checkbox_hover_bg_color'
wp option delete 'pi_dpmw_pp_checkbox_style'
wp option delete 'pi_dpmw_pp_checkbox_bg_color'
wp option delete 'pi_dpmw_pp_checkbox_border_color'
wp option delete 'pi_dpmw_pp_checkbox_checked_bg_color'
wp option delete 'pi_dpmw_pp_checkbox_checkmark_color'
wp option delete 'pisol_dpmw_no_payment_method_warning'
wp option delete 'pi_dpmw_default_order_status'
wp option delete 'pi_dpmw_enable_partial_payment'
wp option delete 'pi_dpmw_partial_amt'
wp option delete 'pi_dpmw_partial_amt_calculation'
wp option delete 'pi_dpmw_partial_payment_title_checkout'
wp option delete 'pi_dpmw_remove_payment_methods'
wp option delete 'pi_dpmw_remove_payment_methods_selected'
wp option delete 'pi_dpmw_txt_to_pay'
wp option delete 'pi_dpmw_balance_to_pay'
wp option delete 'pi_dpmw_paid_amt'
wp option delete 'pi_dpmw_balance_amt'
wp option delete 'pi_dpmw_partial_pay_fees'
wp option delete 'woocommerce_tax_display_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_deposit_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_deposit_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_deposit_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_deposit_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_condition_logic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_condition_logic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_condition_logic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_condition_logic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disable_payment_methods'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disable_payment_methods'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disable_payment_methods'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disable_payment_methods'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_rule_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_rule_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_rule_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_rule_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_fees_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_fees_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_fees_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_fees_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_fees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_fees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_fees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_fees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_fees_taxable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_fees_taxable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_fees_taxable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_fees_taxable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_fees_tax_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_fees_tax_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_fees_tax_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_fees_tax_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pi_payment_hiding_warning_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pi_payment_hiding_warning_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pi_payment_hiding_warning_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pi_payment_hiding_warning_message'"
