#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digages_wdpp_data_usage'
wp option delete 'digages_wdpp_data_usage_second'
wp option delete 'digages_wdpp_optional_ai_auto'
wp option delete 'digages_woodp_option_plugin_version'
wp option delete 'digages_woodp_confirmed_payments'
wp option delete 'digages_woodp_pending_payments'
wp option delete 'digages_wdpp_onboard_interest'
wp option delete 'digages_plugin_onboarding_redirect'
wp option delete 'digages_woodp_install_time_new'
wp option delete 'digages_fiat_currencies'
wp option delete 'woocommerce_currency'
wp option delete 'digages_plugin_version'
wp option delete 'digages_woodp_test_order_delay'
wp option delete 'digages_woodp_test_order_emails'
wp option delete 'digages_geo_currency'
wp option delete 'digages_direct_bank_accounts'
wp option delete 'digages_direct_mobile_accounts'
wp option delete 'digages_direct_crypto_accounts'
wp option delete 'digages_direct_p2p_accounts'
wp option delete 'digages_popup_messages_method'
wp option delete 'woocommerce_digages_direct_payments_settings'
wp option delete 'digages_currency_conversion'
wp option delete 'digages_crypto_transfer_convert'
wp option delete 'digages_currency_rates'
wp option delete 'digages_bank_transfer_instructions_transaction'
wp option delete 'digages_bank_transfer_instructions'
wp option delete 'digages_mobile_transfer_instructions_transaction'
wp option delete 'digages_mobile_transfer_instructions'
wp option delete 'digages_crypto_transfer_instructions_transaction'
wp option delete 'digages_crypto_transfer_instructions'
wp option delete 'digages_p2p_transfer_instructions_transaction'
wp option delete 'digages_p2p_transfer_instructions'
wp option delete 'digages_popup_messages_instructions'
wp option delete 'digages_popup_messages_paymentproof'
wp option delete 'digages_popup_messages_title'
wp option delete 'digages_popup_messages_changepayment'
wp option delete 'woocommerce_default_country'
wp option delete 'digages_accounts_fixed'
wp option delete 'digages_current_page'
wp option delete 'digages_wdpp_activation_key'
wp option delete 'digages_multi_currency_system'
wp option delete 'auto_cancel_pending'
wp option delete 'digages_bank_transfer_title'
wp option delete 'digages_crypto_transfer_title'
wp option delete 'digages_exchange_rate_mode'
wp option delete 'digages_currency_order'
wp option delete 'digages_last_rate_update'
wp option delete 'digages_svg_data_usage'
wp option delete 'digages_mobile_transfer_title'
wp option delete 'digages_p2p_transfer_title'

# Delete Transients
wp transient delete 'digages_cancelled_order_id'

# Clear Cron Jobs
wp cron event delete 'digages_reset_ai_auto_option'
wp cron event delete 'wp_scheduled_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_screenshot_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_screenshot_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_screenshot_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_screenshot_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_digages_paymentdetails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_digages_paymentdetails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_digages_paymentdetails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_digages_paymentdetails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_hundredpay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_hundredpay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_hundredpay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_hundredpay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_tenpay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_tenpay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_tenpay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_tenpay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_screenshot_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_screenshot_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_screenshot_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_screenshot_attachment_id'"
