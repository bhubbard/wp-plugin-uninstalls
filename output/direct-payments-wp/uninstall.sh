#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'digages_aplwoo_data_usage'
wp option delete 'digages_direct_payments_currencies'
wp option delete 'digages_dp_saved_forms'
wp option delete 'digages_direct_payments_email_address'
wp option delete 'digages_direct_payments_email_from'
wp option delete 'digages_direct_payments_support_email'
wp option delete 'digages_direct_payments_footer_text'
wp option delete 'digages_direct_payments_cancel_pending'
wp option delete 'digages_direct_email_settings'
wp option delete 'digages_direct_payments_business_logo'
wp option delete 'digages_direct_payments_email_accent_color'
wp option delete 'digages_direct_payments_link_color'
wp option delete 'digages_direct_payments_settings'
wp option delete 'digages_direct_payments_telegram_id'
wp option delete 'digages_direct_payments_accent_color'
wp option delete 'digages_direct_payments_cancel_pending_days'
wp option delete 'digages_dp_popup_messages_title'
wp option delete 'digages_dp_popup_messages_instructions'
wp option delete 'digages_dp_popup_messages_method'
wp option delete 'digages_dp_popup_messages_paymentproof'
wp option delete 'digages_dp_popup_messages_changepayment'
wp option delete 'digages_dp_direct_bank_accounts'
wp option delete 'digages_dp_bank_transfer_title'
wp option delete 'digages_dp_bank_transfer_instructions'
wp option delete 'digages_dp_bank_transfer_instructions_transaction'
wp option delete 'digages_dp_multi_currency_system'
wp option delete 'digages_dp_fiat_currencies'
wp option delete 'digages_dp_direct_crypto_accounts'
wp option delete 'digages_dp_crypto_transfer_title'
wp option delete 'digages_dp_crypto_transfer_instructions'
wp option delete 'digages_dp_crypto_transfer_instructions_transaction'
wp option delete 'digages_dp_crypto_transfer_convert'
wp option delete 'digages_dp_exchange_rate_mode'
wp option delete 'digages_dp_geo_currency'
wp option delete 'digages_dp_currency_conversion'
wp option delete 'digages_dp_currency_rates'
wp option delete 'digages_dp_currency_order'
wp option delete 'digages_dp_last_rate_update'
wp option delete 'digages_dp_direct_mobile_accounts'
wp option delete 'digages_dp_mobile_transfer_title'
wp option delete 'digages_dp_mobile_transfer_instructions'
wp option delete 'digages_dp_mobile_transfer_instructions_transaction'
wp option delete 'digages_dp_direct_p2p_accounts'
wp option delete 'digages_dp_p2p_transfer_title'
wp option delete 'digages_dp_p2p_transfer_instructions'
wp option delete 'digages_dp_p2p_transfer_instructions_transaction'
wp option delete 'digages_dp_wdpp_data_usage_second'
wp option delete 'digages_dp_wdpp_data_usage'
wp option delete 'digages_dp_wdpp_optional_qrcodenot'
wp option delete 'digages_dp_woodp_option_plugin_version'
wp option delete 'digages_dpwp_activation_key'
wp option delete 'digages_dp_wdpp_onboard_interest'
wp option delete 'digages_dp_plugin_onboarding_redirect'
wp option delete 'digages_dp_woodp_install_time'
wp option delete 'digages_direct_payments_paybutton'
wp option delete 'digages_dp_current_page'
wp option delete 'digages_wdpp_activation_key'
wp option delete 'digages_multi_currency_system'
wp option delete 'digages_fiat_currencies'
wp option delete 'digages_crypto_transfer_convert'
wp option delete 'digages_current_page'
wp option delete 'digages_wdpp_data_usage'
wp option delete 'digages_plugin_onboarding_redirect'
wp option delete 'digages_wdpp_onboard_interest'
wp option delete 'digages_direct_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_addaccountsmain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_available'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_firstpay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_home'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_interests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_tenpay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_tenpay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_tenpay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'digages_dp_plugin_notice_dismissed_tenpay'"
