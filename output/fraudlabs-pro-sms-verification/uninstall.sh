#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fraudlabs_pro_sms_verification_api_key'
wp option delete 'fraudlabs_pro_sms_verification_sms_retries'
wp option delete 'fraudlabs_pro_sms_verification_sms_instruction'
wp option delete 'fraudlabs_pro_sms_verification_sms_template'
wp option delete 'fraudlabs_pro_sms_verification_otp_timeout'
wp option delete 'fraudlabs_pro_sms_verification_wp_default_registration_form'
wp option delete 'fraudlabs_pro_sms_verification_wp_default_login_form'
wp option delete 'fraudlabs_pro_sms_verification_wc_sms_trigger'
wp option delete 'fraudlabs_pro_sms_verification_wc_trigger_countries_option'
wp option delete 'fraudlabs_pro_sms_verification_wc_trigger_countries'
wp option delete 'fraudlabs_pro_sms_verification_wc_email_subject'
wp option delete 'fraudlabs_pro_sms_verification_wc_email_content'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_complete_order_when_verified'
wp option delete 'fraudlabs_pro_sms_verification_wc_verified_status'
wp option delete 'fraudlabs_pro_sms_verification_wc_default_registration_form'
wp option delete 'fraudlabs_pro_sms_verification_wc_default_login_form'
wp option delete 'fraudlabs_pro_sms_verification_wc_default_checkout_form'
wp option delete 'fraudlabs_pro_sms_verification_wc_email_verify'
wp option delete 'fraudlabs_pro_sms_verification_wc_change_order_when_verified'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_enabled_wc_email_verify'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_api_key'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_enabled_wc_checkout_form'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_enabled_wc_registration_form'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_sms_instruction'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_sms_retries'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_sms_template'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_sms_trigger'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_sms_trigger_countries'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_email_subject'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_email_content'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_enabled_fraudlabs_pro_debug_log'
wp option delete 'wc_settings_woocommerce-fraudlabs-pro-sms-verification_otp_timeout'
wp option delete 'fraudlabs_pro_sms_verification_edd_email_subject'
wp option delete 'fraudlabs_pro_sms_verification_edd_email_content'
wp option delete 'fraudlabs_pro_sms_verification_edd_email_verify'
wp option delete 'fraudlabs_pro_sms_verification_sms_tel_cc'
wp option delete 'fraudlabs_pro_sms_verification_msg_sms_required'
wp option delete 'fraudlabs_pro_sms_verification_msg_otp_success'
wp option delete 'fraudlabs_pro_sms_verification_msg_otp_fail'
wp option delete 'fraudlabs_pro_sms_verification_msg_invalid_phone'
wp option delete 'fraudlabs_pro_sms_verification_msg_invalid_otp'
wp option delete 'fraudlabs_pro_sms_verification_debug_log_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_fraudlabspro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_fraudlabspro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_fraudlabspro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_fraudlabspro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_payment_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_payment_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_payment_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_payment_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudlabspro_sms_edd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudlabspro_sms_edd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudlabspro_sms_edd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudlabspro_sms_edd'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudlabspro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudlabspro_sms_wc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudlabspro_sms_wc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudlabspro_sms_wc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudlabspro_sms_wc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fraudlabspro_sms_vrf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fraudlabspro_sms_vrf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fraudlabspro_sms_vrf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fraudlabspro_sms_vrf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fraudlabspro_sms_verification_wc_admin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fraudlabspro_sms_verification_wc_admin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fraudlabspro_sms_verification_wc_admin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fraudlabspro_sms_verification_wc_admin_notice'"
