#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_ev_version'
wp option delete 'alg_wc_ev_clear_previous_messages'
wp option delete 'alg_wc_ev_block_nonpaying_users_activation_role'
wp option delete 'alg_wc_ev_expiration_time'
wp option delete 'alg_wc_ev_expiration_time_unit'
wp option delete 'alg_wc_ev_session_start_params'
wp option delete 'alg_wc_ev_bkg_process_send_email'
wp option delete 'alg_wc_ev_bkg_process_email_to'
wp option delete 'alg_wc_ev_encoding_method'
wp option delete 'alg_wc_ev_required_user_meta'
wp option delete 'alg_wc_ev_admin_column'
wp option delete 'alg_wc_ev_admin_manual'
wp option delete 'alg_wc_ev_admin_users_filter'
wp option delete 'alg_wc_ev_verify_already_registered'
wp option delete 'alg_wc_ev_skip_user_roles'
wp option delete 'alg_wc_ev_bkg_process_min_amount'
wp option delete 'alg_wc_ev_admin_bulk_user_actions_resend'
wp option delete 'alg_wc_ev_admin_bulk_verify_users'
wp option delete 'alg_wc_ev_admin_bulk_unverify_users'
wp option delete 'alg_wc_ev_admin_allowed_user_roles'
wp option delete 'alg_wc_ev_admin_column_position'
wp option delete 'alg_wc_ev_hashids_salt'
wp option delete 'alg_wc_ev_redirect_to_my_account_on_success'
wp option delete 'alg_wc_ev_blocked_pages'
wp option delete 'alg_wc_ev_block_content_redirect'
wp option delete 'alg_wc_ev_verification_info_widget'
wp option delete 'alg_wc_ev_verification_info_my_account'
wp option delete 'alg_wc_ev_verification_info_customization'
wp option delete 'alg_wc_ev_redirect_on_failure'
wp option delete 'alg_wc_ev_redirect_on_failure_url'
wp option delete 'alg_wc_ev_login_automatically_on_activation'
wp option delete 'alg_wc_ev_redirect_on_success_url'
wp option delete 'alg_wc_ev_sc_custom_msg'
wp option delete 'alg_wc_ev_hashids_alphabet'
wp option delete 'alg_wc_ev_send_as_separate_email'
wp option delete 'alg_wc_ev_new_user_action'
wp option delete 'alg_wc_ev_delay_wc_email'
wp option delete 'alg_wc_ev_wc_email_template'
wp option delete 'alg_wc_ev_email_template'
wp option delete 'alg_wc_ev_enable_confirmation_email'
wp option delete 'alg_wc_ev_send_confirmation_email_to_manually_verified_users'
wp option delete 'alg_wc_ev_confirmation_email_delay'
wp option delete 'alg_wc_ev_confirmation_email_delay_value'
wp option delete 'alg_wc_ev_confirmation_email_delay_time_unit'
wp option delete 'alg_wc_ev_sc_email_content_placeholder'
wp option delete 'alg_wc_ev_delay_activation_email'
wp option delete 'alg_wc_ev_send_delayed_email_users'
wp option delete 'alg_wc_ev_fine_tune_activation_email_placement'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'alg_wc_ev_mail_function'
wp option delete 'alg_wc_ev_wc_email_from'
wp option delete 'alg_wc_ev_verify_guest_email'
wp option delete 'alg_wc_ev_verify_guest_send_link_text'
wp option delete 'alg_wc_ev_verify_guest_verification_message'
wp option delete 'alg_wc_ev_verify_guest_resent_text'
wp option delete 'alg_wc_ev_verify_guest_already_verification_message'
wp option delete 'alg_wc_ev_guest_invalid_token_message'
wp option delete 'alg_wc_ev_nonce_verify_guest_email'
wp option delete 'alg_wc_ev_prevent_login_after_register'
wp option delete 'alg_wc_ev_prevent_login_after_checkout'
wp option delete 'alg_wc_ev_prevent_login_after_checkout_action'
wp option delete 'alg_wc_ev_prevent_login_after_checkout_notice'
wp option delete 'alg_wc_ev_prevent_login_myaccount'
wp option delete 'alg_wc_ev_prevent_login_always'
wp option delete 'alg_wc_ev_block_unverified_login'
wp option delete 'alg_wc_ev_one_time_activation_link'
wp option delete 'alg_wc_ev_prevent_login_after_register_session_redirect'
wp option delete 'alg_wc_ev_prevent_login_after_register_redirect'
wp option delete 'alg_wc_ev_prevent_login_after_register_method'
wp option delete 'alg_wc_ev_auth_filter'
wp option delete 'alg_wc_ev_block_auth_cookies'
wp option delete 'alg_wc_ev_prevent_login_after_register_redirect_url'
wp option delete 'alg_wc_ev_prevent_login_always_redirect'
wp option delete 'alg_wc_ev_custom_logout_function'
wp option delete 'alg_wc_ev_error_message'
wp option delete 'alg_wc_ev_email_resend_message'
wp option delete 'alg_wc_ev_failed_message'
wp option delete 'alg_wc_ev_success_message'
wp option delete 'alg_wc_ev_activation_message'
wp option delete 'alg_wc_ev_already_verified_message'
wp option delete 'alg_wc_ev_resend_verification_url'
wp option delete 'alg_wc_ev_guest_unverified_user_message'
wp option delete 'alg_wc_ev_block_nonpaying_users_activation'
wp option delete 'alg_wc_ev_block_nonpaying_users_activation_email_on_payment'
wp option delete 'alg_wc_ev_block_nonpaying_users_activation_error_notice'
wp option delete 'alg_wc_ev_delete_users_cron'
wp option delete 'alg_wc_ev_delete_users_from_network'
wp option delete 'alg_wc_ev_delete_users_registration_delay'
wp option delete 'alg_wc_ev_delete_users_cron_frequency'
wp option delete 'alg_wc_ev_delete_users'
wp option delete 'alg_wc_ev_activation_email_automatic_sending_frequency'
wp option delete 'alg_wc_ev_activation_email_automatic_sending_frequency_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Clear Cron Jobs
wp cron event delete 'alg_wc_ev_confirmation_email_delay_event'
wp cron event delete 'alg_wc_ev_delete_unverified_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_is_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_is_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_is_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_is_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_customer_new_account_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_customer_new_account_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_customer_new_account_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_customer_new_account_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_admin_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_admin_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_admin_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_admin_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_activation_code_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_activation_code_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_activation_code_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_activation_code_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_my_account_referer_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_my_account_referer_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_my_account_referer_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_my_account_referer_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_activation_code_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_activation_code_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_activation_code_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_activation_code_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_activation_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_activation_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_activation_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_activation_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_redirect_referer_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_redirect_referer_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_redirect_referer_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_redirect_referer_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_ev_activation_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_ev_activation_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_ev_activation_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_ev_activation_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfcs_dashboard_banner_closed_time'"
