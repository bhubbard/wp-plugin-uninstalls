#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dgx_donate_form_pack_first_look'
wp option delete 'dgx_donate_payment_processor_choice'
wp option delete 'dgx_donate_currency'
wp option delete 'dgx_donate_form_style'
wp option delete 'dgx_donate_currency_extend'
wp option delete 'dgx_donate_default_country'
wp option delete 'dgx_donate_default_state'
wp option delete 'dgx_donate_show_designated_funds_section'
wp option delete 'dgx_donate_show_repeating_option'
wp option delete 'dgx_donate_show_tribute_section'
wp option delete 'dgx_donate_show_employer_section'
wp option delete 'dgx_donate_show_donor_telephone_field'
wp option delete 'dgx_donate_show_donor_employer_field'
wp option delete 'dgx_donate_show_donor_occupation_field'
wp option delete 'dgx_donate_show_mailing_list_option'
wp option delete 'dgx_donate_show_anonymous_option'
wp option delete 'dgx_donate_show_donor_address_fields'
wp option delete 'dgx_donate_labels_for_input'
wp option delete 'dgx_donate_stylesheet_priority'
wp option delete 'dgx_donate_legacy_addon_check'
wp option delete 'dgx_donate_5000_deactivated_addons'
wp option delete 'dgx_donate_debug_mode'
wp option delete 'dgx_donate_log'
wp option delete 'dgx_donate_cron_log'
wp option delete 'dgx_donate_audit_log'
wp option delete 'dgx_donate_stripe_event_json_dump'
wp option delete 'dgx_donate_caching_causing_failure'
wp option delete 'dgx_donate_stripe_event_scan_period'
wp option delete 'dgx_donate_stripe_event_type_to_scan'
wp option delete 'dgx_donate_allow_legacy_paypal'
wp option delete 'dgx_donate_paypal_server'
wp option delete 'dgx_donate_log_obscure_name'
wp option delete 'dgx_donate_notify_emails'
wp option delete 'dgx_donate_paypal_email_live'
wp option delete 'dgx_donate_paypal_email_sandbox'
wp option delete 'dgx_donate_live_paypal_client_id'
wp option delete 'dgx_donate_live_paypal_secret_key'
wp option delete 'dgx_donate_sandbox_paypal_client_id'
wp option delete 'dgx_donate_sandbox_paypal_secret_key'
wp option delete 'dgx_donate_paypal_merchant_live'
wp option delete 'dgx_donate_paypal_client_live'
wp option delete 'dgx_donate_paypal_secret_live'
wp option delete 'dgx_donate_paypal_merchant_sandbox'
wp option delete 'dgx_donate_paypal_client_sandbox'
wp option delete 'dgx_donate_paypal_secret_sandbox'
wp option delete 'dgx_donate_obsolete_legacy_ssl_mode'
wp option delete 'dgx_donate_organization_name'
wp option delete 'dgx_donate_stripe_server'
wp option delete 'dgx_donate_live_stripe_api_key'
wp option delete 'dgx_donate_live_stripe_secret_key'
wp option delete 'dgx_donate_test_stripe_api_key'
wp option delete 'dgx_donate_test_stripe_secret_key'
wp option delete 'dgx_donate_stripe_billing_address'
wp option delete 'dgx_donate_form_via_action'
wp option delete 'dgx_donate_ignore_form_nonce'
wp option delete 'dgx_donate_browser_uuid'
wp option delete 'dgx_donate_compact_menus'
wp option delete 'dgx_donate_no_stripe_key_check'
wp option delete 'dgx_donate_ignore_paypal_ipn'
wp option delete 'dgx_donate_rebuild_xref_by_name'
wp option delete 'dgx_donate_email_name'
wp option delete 'dgx_donate_email_reply'
wp option delete 'dgx_donate_email_subj'
wp option delete 'dgx_donate_email_body'
wp option delete 'dgx_donate_email_recur'
wp option delete 'dgx_donate_email_desig'
wp option delete 'dgx_donate_email_anon'
wp option delete 'dgx_donate_email_list'
wp option delete 'dgx_donate_email_empl'
wp option delete 'dgx_donate_email_trib'
wp option delete 'dgx_donate_email_close'
wp option delete 'dgx_donate_email_sig'
wp option delete 'dgx_donate_thanks_text'
wp option delete 'dgx_donate_db_version'
wp option delete 'dgx_donate_reply_email'
wp option delete 'dgx_donate_5107_update'
wp option delete 'dgx_donate_paypal_email'
wp option delete 'dgx_donate_4012_indexes_updated'
wp option delete 'dgx_donate_4013_anon_updated'
wp option delete 'dgx_donate_designated_funds_legacy_import'
wp option delete 'dgx_donate_designated_funds'
wp option delete 'dgx_donate_donations_legacy_import'
wp option delete '_dgx_donate_donations_legacy_import'
wp option delete 'dgx_donate_donors_legacy_import'
wp option delete 'dgx_donate_form_url'
wp option delete 'dgxdonate_licenses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_term_%'"
wp option delete 'dgx_donate_paypal2022_rest_product_id'
wp option delete 'dgx_donate_active_version'
wp option delete 'dgx_donate_live_webhook_stripe_secret_key'
wp option delete 'dgx_donate_test_webhook_stripe_secret_key'
wp option delete 'dgx_donate_5021_stripe_invoices_live'
wp option delete 'dgx_donate_5021_stripe_invoices_test'
wp option delete 'dgx_donate_start_in_sd4_mode'
wp option delete 'dgx_donate_first_run_time'
wp option delete 'dgx_donate_payment_gateway'
wp option delete 'dgx_donate_default_province'
wp option delete 'dgx_donate_scripts_in_footer'
wp option delete 'dgx_donate_activation_count'
wp option delete 'dgx_donate_activation_timestamp'
wp option delete 'dgx_donate_deactivation_timestamp'

# Clear Cron Jobs
wp cron event delete 'seamless_donations_daily_cron_hook'
wp cron event delete 'seamless_donations_hourly_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_address2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_address2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_address2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_address2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_province'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_province'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_province'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_province'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_add_to_mailing_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_add_to_mailing_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_add_to_mailing_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_add_to_mailing_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_anonymous'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_anonymous'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_anonymous'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_anonymous'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_designated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_designated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_designated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_designated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_designated_fund'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_designated_fund'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_designated_fund'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_designated_fund'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_employer_match'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_employer_match'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_employer_match'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_employer_match'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_employer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_employer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_employer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_employer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_occupation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_occupation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_occupation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_occupation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_uk_gift_aid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_uk_gift_aid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_uk_gift_aid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_uk_gift_aid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_tribute_gift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_tribute_gift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_tribute_gift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_tribute_gift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honor_by_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honor_by_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honor_by_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honor_by_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_email_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_email_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_email_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_email_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_post_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_post_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_post_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_post_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_province'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_province'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_province'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_province'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_zip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_zip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_zip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_zip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_honoree_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_honoree_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_honoree_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_honoree_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_memorial_gift'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_memorial_gift'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_memorial_gift'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_memorial_gift'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_payment_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_repeating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_repeating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_repeating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_repeating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donation_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donation_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donation_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donation_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_payment_processor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_payment_processor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_payment_processor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_payment_processor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_donations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_donations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_donations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_donations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_fund_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_fund_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_fund_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_fund_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sunset-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sunset-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sunset-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sunset-dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_designated_fund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_designated_fund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_designated_fund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_designated_fund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_fund_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_fund_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_fund_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_fund_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_doname_employer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_doname_employer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_doname_employer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_doname_employer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_employer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_employer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_employer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_employer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_occupation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_occupation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_occupation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_occupation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_donor_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_donor_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_donor_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_donor_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_stripe_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_stripe_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_stripe_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_stripe_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_stripe_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_stripe_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_stripe_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_stripe_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_paypal_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_paypal_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_paypal_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_paypal_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_paypal2022_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_paypal2022_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_paypal2022_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_paypal2022_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dgx_donate_payment_processor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dgx_donate_payment_processor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dgx_donate_payment_processor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dgx_donate_payment_processor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_desired_post_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
