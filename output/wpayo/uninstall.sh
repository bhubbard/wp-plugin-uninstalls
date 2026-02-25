#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pronamic_pay_config_id'
wp option delete 'pronamic_pay_version'
wp option delete 'pronamic_pay_about_page_version'
wp option delete 'pronamic_pay_active_payment_methods'
wp option delete 'pronamic_pay_google_analytics_property'
wp option delete 'pronamic_pay_license_status'
wp option delete 'pronamic_pay_license_key'
wp option delete 'pronamic_pay_uninstall_clear_data'
wp option delete 'pronamic_pay_woocommerce_birth_date_field'
wp option delete 'pronamic_pay_woocommerce_birth_date_field_enable'
wp option delete 'pronamic_pay_woocommerce_gender_field'
wp option delete 'pronamic_pay_woocommerce_gender_field_enable'
wp option delete 'woocommerce_currency'
wp option delete 'pronamic_pay_db_version'
wp option delete 'pronamic_pay_ideal_event_espreso_config_id'
wp option delete 'pronamic_pay_ideal_jigoshop_enabled'
wp option delete 'pronamic_pay_ideal_jigoshop_title'
wp option delete 'pronamic_pay_ideal_jigoshop_description'
wp option delete 'pronamic_pay_ideal_jigoshop_config_id'
wp option delete 'pronamic_pay_ideal_membership_config_id'
wp option delete 'pronamic_pay_ideal_s2member_config_id'
wp option delete 'woocommerce_pronamic_pay_ideal_settings'
wp option delete 'pronamic_pay_ideal_wpsc_config_id'
wp option delete 'pronamic_ideal_version'
wp option delete 'pronamic_ideal_key'
wp option delete 'gf_ideal_version'
wp option delete 'pronamic_ideal_event_espresso_configuration_id'
wp option delete 'jigoshop_pronamic_ideal_enabled'
wp option delete 'jigoshop_pronamic_ideal_title'
wp option delete 'jigoshop_pronamic_ideal_description'
wp option delete 'jigoshop_pronamic_ideal_configuration_id'
wp option delete 'pronamic_ideal_membership_enabled'
wp option delete 'pronamic_ideal_membership_chosen_configuration'
wp option delete 'pronamic_ideal_s2member_enabled'
wp option delete 'pronamic_ideal_s2member_chosen_configuration'
wp option delete 'woocommerce_pronamic_ideal_settings'
wp option delete 'pronamic_ideal_wpsc_configuration_id'

# Delete Transients
wp transient delete 'wpayo_instamojo_with_missing_email'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'
wp transient delete 'pronamic_pay_admin_redirect'
wp transient delete 'pronamic_pay_license_data'
wp transient delete 'pronamic_outdated_webhook_urls'

# Clear Cron Jobs
wp cron event delete 'pronamic_pay_license_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_authorize_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_authorize_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_authorize_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_authorize_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_authorize_transaction_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_authorize_transaction_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_authorize_transaction_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_authorize_transaction_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_ems_ecommerce_storename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_ems_ecommerce_storename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_ems_ecommerce_storename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_ems_ecommerce_storename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_ideal_merchant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_ideal_merchant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_ideal_merchant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_ideal_merchant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_buckaroo_website_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_buckaroo_website_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_buckaroo_website_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_buckaroo_website_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_icepay_merchant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_icepay_merchant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_icepay_merchant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_icepay_merchant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_mollie_partner_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_mollie_partner_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_mollie_partner_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_mollie_partner_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_multisafepay_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_multisafepay_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_multisafepay_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_multisafepay_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_pay_nl_service_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_pay_nl_service_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_pay_nl_service_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_pay_nl_service_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_paydutch_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_paydutch_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_paydutch_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_paydutch_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_targetpay_layoutcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_targetpay_layoutcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_targetpay_layoutcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_targetpay_layoutcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_ogone_psp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_ogone_psp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_ogone_psp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_ogone_psp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_ogone_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_ogone_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_ogone_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_ogone_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_ideal_basic_hash_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_ideal_basic_hash_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_ideal_basic_hash_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_ideal_basic_hash_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_omnikassa_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_omnikassa_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_omnikassa_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_omnikassa_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_buckaroo_secret_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_buckaroo_secret_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_buckaroo_secret_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_buckaroo_secret_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_icepay_secret_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_icepay_secret_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_icepay_secret_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_icepay_secret_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_ogone_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_ogone_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_ogone_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_ogone_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_trash_meta_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_payment_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_payment_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_payment_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_payment_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_payment_config_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_payment_config_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_payment_config_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_payment_config_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_subscription_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_subscription_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_subscription_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_subscription_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_subscription_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_subscription_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_subscription_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_subscription_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pronamic_pay_ignore_tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pronamic_pay_ignore_tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pronamic_pay_ignore_tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pronamic_pay_ignore_tour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_payment_form_config_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_payment_form_config_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_payment_form_config_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_payment_form_config_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_payment_form_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_payment_form_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_payment_form_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_payment_form_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_payment_form_amount_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_payment_form_amount_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_payment_form_amount_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_payment_form_amount_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_payment_form_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_payment_form_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_payment_form_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_payment_form_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_webhook_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_webhook_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_webhook_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_webhook_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_payment_form_amount_choices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_payment_form_amount_choices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_payment_form_amount_choices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_payment_form_amount_choices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpayo_gateway_sisow_test_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpayo_gateway_sisow_test_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpayo_gateway_sisow_test_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpayo_gateway_sisow_test_mode'"
