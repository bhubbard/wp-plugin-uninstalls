#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mepp_deposit_buttons_colors'
wp option delete 'mepp_site_wide_disable'
wp option delete 'mepp_instance'
wp option delete 'mepp_order_list_table_show_has_deposit'
wp option delete 'woocommerce_allow_bulk_remove_personal_data'
wp option delete 'mepp_fees_handling'
wp option delete 'mepp_taxes_handling'
wp option delete 'mepp_shipping_handling'
wp option delete 'mepp_shipping_taxes_handling'
wp option delete 'mepp_coupons_handling'
wp option delete 'mepp_partial_payments_structure'
wp option delete 'mepp_second_payment_due_after'
wp option delete 'mepp_second_payment_text'
wp option delete 'mepp_default_option'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'mepp_storewide_deposit_enabled'
wp option delete 'mepp_storewide_deposit_amount_type'
wp option delete 'mepp_storewide_deposit_amount'
wp option delete 'mepp_storewide_deposit_force_deposit'
wp option delete 'mepp_remaining_payable'
wp option delete 'mepp_enable_zero_deposit'
wp option delete 'mepp_debug_mode'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_deposit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_amount_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_amount'"
wp option delete 'mepp_reminder_datepicker'
wp option delete 'mepp_checkout_mode_enabled'
wp option delete 'mepp_checkout_mode_deposit_amount'
wp option delete 'mepp_checkout_mode_deposit_amount_type'
wp option delete 'mepp_message_deposit'
wp option delete 'mepp_message_full_amount'
wp option delete 'mepp_tax_display'
wp option delete 'mepp_button_deposit'
wp option delete 'mepp_button_full_amount'
wp option delete 'mepp_deposit_option_text'
wp option delete 'mepp_use_basic_radio_buttons'
wp option delete 'mepp_storewide_deposit_enabled_details'
wp option delete 'mepp_hide_ui_when_forced'
wp option delete 'mepp_disable_deposit_for_user_roles'
wp option delete 'mepp_restrict_deposits_for_logged_in_users_only'
wp option delete 'mepp_tax_display_cart_item'
wp option delete 'mepp_deposit_amount_text'
wp option delete 'mepp_checkout_mode_payment_plans'
wp option delete 'mepp_to_pay_text'
wp option delete 'mepp_checkout_mode_force_deposit'
wp option delete 'woocommerce_checkout_pay_endpoint'
wp option delete 'mepp_disallowed_gateways_for_deposit'
wp option delete 'mepp_disallowed_gateways_for_second_payment'
wp option delete 'wc_deposit_auto_applied_coupons_for_full'
wp option delete 'mepp_order_fully_paid_status'
wp option delete 'mepp_override_payment_form'
wp option delete 'mepp_reduce_stock'
wp option delete 'mepp_partially_paid_orders_editable'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_checkout_order_pay_endpoint'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'mepp_enable_second_payment_reminder'
wp option delete 'mepp_enable_partial_payment_reminder'
wp option delete 'mepp_partial_payment_reminder_x_days_before_due_date'
wp option delete 'mepp_second_payment_reminder_duration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpo_wcpdf_documents_settings_%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'mepp_payment_link_text'
wp option delete 'mepp_storewide_deposit_enabled_btn'
wp option delete 'mepp_breakdown_cart_tooltip'
wp option delete 'woocommerce_colors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_force_deposit'"
wp option delete 'mepp_storewide_deposit_payment_plans'
wp option delete 'mepp_migration_done_2024'
wp option delete 'mepp_enable_partial_by_default'
wp option delete 'mepp_default_partial_type'
wp option delete 'mepp_default_partial_amount'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'mepp_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'woocommerce_deposits_second_payment_reminder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deposit_percentage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepp_inherit_storewide_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepp_inherit_storewide_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepp_inherit_storewide_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepp_inherit_storewide_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepp_enable_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepp_enable_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepp_enable_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepp_enable_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepp_amount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepp_amount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepp_amount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepp_amount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepp_deposit_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepp_deposit_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepp_deposit_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepp_deposit_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepp_force_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepp_force_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepp_force_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepp_force_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mep_enable_pp_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mep_enable_pp_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mep_enable_pp_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mep_enable_pp_deposit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mep_pp_deposits_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mep_pp_deposits_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mep_pp_deposits_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mep_pp_deposits_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mep_pp_deposits_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mep_pp_deposits_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mep_pp_deposits_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mep_pp_deposits_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mep_exclude_from_global_deposit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mep_exclude_from_global_deposit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mep_exclude_from_global_deposit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mep_exclude_from_global_deposit'"
