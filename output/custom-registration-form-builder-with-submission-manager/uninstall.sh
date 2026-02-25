#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rm_premium_license_id'
wp option delete 'rm_premium_license_key'
wp option delete 'rm_premium_license_response'
wp option delete 'rm_option_paypal_modern_enable'
wp option delete 'rm_option_paypal_client_id'
wp option delete 'rm_option_paypal_secret_key'
wp option delete 'rm_option_newsletter_subbed'
wp option delete 'rm_hide_welcome_modal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_id'"
wp option delete 'rm_premium_item_id'
wp option delete 'rm_premium_license_status'
wp option delete 'rm_forms_entry_depth'
wp option delete 'rm_forms_view_roll_back'
wp option delete 'rm_option_enable_captcha'
wp option delete 'rm_profile_tabs_order_status'
wp option delete 'rm_inbox_entry_depth'
wp option delete 'rm_user_entry_depth'
wp option delete 'rm_option_front_sub_page_id'
wp option delete 'rm_option_banned_email'
wp option delete 'rm_dismiss_floating_banner'
wp option delete 'rm_option_mailchimp_key'
wp option delete 'rm_option_enable_mailchimp'
wp option delete 'rm_option_inserted_sample_data'
wp option delete 'rm_dismiss_upgrade_notice'
wp option delete 'rm_option_enable_tax'
wp option delete 'rm_option_tax_type'
wp option delete 'rm_option_tax_fixed'
wp option delete 'rm_option_tax_percentage'
wp option delete 'rm_option_front_login_page_id'
wp option delete 'rm_dismiss_customize_banner'
wp option delete 'rm_option_recaptcha_v'
wp option delete 'rm_option_public_key3'
wp option delete 'rm_option_private_key3'
wp option delete 'rm_option_public_key'
wp option delete 'rm_option_private_key'
wp option delete 'rm_option_file_size'
wp option delete 'rm_option_file_size_error'
wp option delete 'rm_option_allow_multiple_file_uploads'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_default_customer_address'
wp option delete 'rm_option_allowed_file_types'
wp option delete 'rm_option_jobman_job'
wp option delete 'pj_wpdb_sessions_version'
wp option delete 'rm_option_hide_toolbar'
wp option delete 'rm_option_enable_toolbar_for_admin'
wp option delete 'rm_option_post_logout_redirection_page_id'
wp option delete 'rm_option_default_registration_url'
wp option delete 'rm_option_db_version'
wp option delete 'rm_option_rm_version'
wp option delete 'cron'
wp option delete 'rm_option_default_payment_method'
wp option delete 'rm_redirect_after_activation'
wp option delete 'rm_inbox_default_form'
wp option delete 'rm_option_user_auto_approval'
wp option delete 'rm_create_posts_pages'
wp option delete 'rm_option_enable_admin_order'
wp option delete 'rm_option_admin_order'
wp option delete 'rm_option_last_activation_time'
wp option delete 'crf_db_version'
wp option delete 'rm_option_last_update_time'
wp option delete 'rm_option_upgraded'
wp option delete 'rm_option_install_date'
wp option delete 'rm_option_install_type'
wp option delete 'rm_option_theme'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_response'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_item_id'"
wp option delete 'rm_mig_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rm_option_%'"
wp option delete 'crf_smtp_from_email_name'
wp option delete 'rm_option_senders_display_name'
wp option delete 'crf_smtp_from_email_address'
wp option delete 'rm_option_senders_email'
wp option delete 'crf_smtp_autentication'
wp option delete 'rm_option_smtp_auth'
wp option delete 'crf_smtp_encription'
wp option delete 'rm_option_smtp_encryption_type'
wp option delete 'crf_currency'
wp option delete 'crf_migrate_submission'
wp option delete 'rm_option_post_submission_redirection_url'
wp option delete 'rm_option_redirect_admin_to_dashboard_post_login'
wp option delete 'rm_option_show_asterix'
wp option delete 'rm_option_currency_symbol_position'
wp option delete 'rm_option_currency'
wp option delete 'rm_option_form_layout'
wp option delete 'rm_option_google_map_key'
wp option delete 'rm_option_enable_custom_pw_rests'
wp option delete 'rm_option_custom_pw_rests'
wp option delete 'rm_option_user_role_custom_data'
wp option delete 'rm_option_send_password'
wp option delete 'rm_option_send_act_email'
wp option delete 'rm_option_enable_aweber'
wp option delete 'rm_option_admin_notification_includes_pdf'
wp option delete 'rm_option_prov_acc_act_criteria'
wp option delete 'rm_option_tax_rename'
wp option delete 'rm_option_display_progress_bar'
wp option delete 'rm_option_payment_gateway'
wp option delete 'rm_option_hide_pay_selector'
wp option delete 'rm_option_banned_ip'
wp option delete 'rm_option_prov_act_acc'
wp option delete 'rm_option_sub_limit_antispam'
wp option delete 'rm_option_blacklisted_usernames'
wp option delete 'rm_option_automation_intro_time'
wp option delete 'rm_option_ex_chronos_db_version'
wp option delete 'rm_option_disable_pg_profile'
wp option delete 'rm_option_display_floating_action_btn'
wp option delete 'rm_option_woo_enable_rm_account_link'
wp option delete 'enable_user_invoice'
wp option delete 'enable_invoice'
wp option delete 'rm_option_file_prefix'
wp option delete 'rm_option_mailchimp_double_optin'
wp option delete 'rm_option_paypal_test_mode'
wp option delete 'rm_option_paypal_email'
wp option delete 'rm_option_paypal_page_style'

# Delete Transients
wp transient delete 'rm_license_last_check_time'
wp transient delete 'rm_user_online_status'

# Clear Cron Jobs
wp cron event delete 'rm_job_hook'
wp cron event delete 'pj_wpdb_sessions_gc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_user_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pm_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'RM_UMETA_FORM_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'RM_UMETA_FORM_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'RM_UMETA_FORM_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'RM_UMETA_FORM_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'RM_UMETA_SUB_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'RM_UMETA_SUB_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'RM_UMETA_SUB_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'RM_UMETA_SUB_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_woo_registration_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_woo_registration_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_woo_registration_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_woo_registration_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_pass_expiry_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_pass_expiry_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_pass_expiry_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_pass_expiry_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rm_pass_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rm_pass_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rm_pass_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rm_pass_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avatar_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avatar_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avatar_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avatar_image'"
