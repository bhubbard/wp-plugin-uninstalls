#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lkn_wcip_invoices'
wp option delete 'lkn_wcip_quotes'
wp option delete 'lkn_wcip_default_footer'
wp option delete 'lkn_wcip_quote_expiration'
wp option delete 'lkn_wcip_global_pdf_template_id'
wp option delete 'lkn_wcip_quote_mode'
wp option delete 'lkn_wcip_create_invoice_automatically'
wp option delete 'lkn_wcip_anonymous_donation_checkout'
wp option delete 'lkn_wcip_after_save_button_email_check'
wp option delete 'lkn_wcip_subscription_active_product_invoices'
wp option delete 'lkn_wcip_show_fee_activated'
wp option delete 'lkn_wcip_show_discount_activated'
wp option delete 'lkn_wcip_partial_payments_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_wcip_fee_or_discount_method_activated_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'lkn_wcip_donation_dokan_compatibility'
wp option delete 'lkn_wcip_partial_interval_minimum'
wp option delete 'lkn_wcip_donation_product_enabled'
wp option delete 'lkn_wcip_donation_button_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_wcip_fee_or_discount_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_wcip_fee_or_discount_percent_fixed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_wcip_fee_or_discount_value_%'"
wp option delete 'woocommerce_rede_credit_settings'
wp option delete 'woocommerce_maxipago_credit_settings'
wp option delete 'woocommerce_lkn_cielo_credit_settings'
wp option delete 'woocommerce_lkn_cielo_debit_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_wcip_fee_or_discount_show_price_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_wcip_fee_or_discount_icon_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lkn_wcip_otp_%'"
wp option delete 'lkn_wcip_otp_email_enable_type'
wp option delete 'lkn_wcip_partial_payment_methods_statuses'
wp option delete 'lkn_wcip_partial_complete_status'
wp option delete 'lkn_wcip_show_products_price'
wp option delete 'lkn_wcip_display_coupon'
wp option delete 'woocommerce_lkn_invoice_quote_gateway_settings'
wp option delete 'lkn_wcip_partial_payment_methods_enabled'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'lkn_wcip_interval_number'
wp option delete 'lkn_wcip_interval_type'
wp option delete 'lkn_wcip_whatsapp_buy_button_enabled'
wp option delete 'lkn_wcip_whatsapp_message_text'
wp option delete 'lkn_wcip_whatsapp_phone_number'
wp option delete 'lkn_wcip_whatsapp_button_text'
wp option delete 'lkn_wcip_template_logo_url'
wp option delete 'lkn_wcip_sender_details'
wp option delete 'lkn_wcip_text_before_payment_link'

# Clear Cron Jobs
wp cron event delete 'lkn_wcip_cron_hook'
wp cron event delete 'lkn_wcip_check_expired_quotes'
wp cron event delete 'generate_invoice_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_button_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_button_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_button_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_button_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_hide_custom_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_hide_custom_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_hide_custom_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_hide_custom_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_free_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_free_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_free_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_free_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_enable_goal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_enable_goal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_enable_goal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_enable_goal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_goal_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_goal_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_goal_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_goal_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_show_progress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_show_progress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_show_progress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_show_progress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_enable_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_enable_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_enable_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_enable_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_deadline_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_deadline_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_deadline_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_deadline_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_show_countdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_show_countdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_show_countdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_show_countdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_deadline_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_deadline_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_deadline_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_deadline_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_donation_current_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_donation_current_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_donation_current_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_donation_current_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lkn-wcip-subscription-product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lkn-wcip-subscription-product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lkn-wcip-subscription-product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lkn-wcip-subscription-product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lkn_wcip_subscription_interval_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lkn_wcip_subscription_interval_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lkn_wcip_subscription_interval_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lkn_wcip_subscription_interval_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lkn_wcip_subscription_interval_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lkn_wcip_subscription_interval_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lkn_wcip_subscription_interval_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lkn_wcip_subscription_interval_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lkn_wcip_subscription_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lkn_wcip_subscription_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lkn_wcip_subscription_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lkn_wcip_subscription_limit'"
