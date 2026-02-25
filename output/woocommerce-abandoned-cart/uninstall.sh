#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcal_db_version'
wp option delete 'wcal_guest_user_id_altered'
wp option delete 'wcal_guest_users_manual_reset_needed'
wp option delete 'wcal_new_default_templates'
wp option delete 'ac_lite_alter_table_queries'
wp option delete 'wcal_email_type_setup'
wp option delete 'wcal_from_email'
wp option delete 'wcal_from_name'
wp option delete 'wcal_reply_email'
wp option delete 'wcal_add_email_status_col'
wp option delete 'woocommerce_ac_settings'
wp option delete 'ac_lite_settings_status'
wp option delete 'ac_lite_cart_abandoned_time'
wp option delete 'ac_lite_delete_abandoned_order_days'
wp option delete 'ac_lite_email_admin_on_recovery'
wp option delete 'wcap_email_admin_on_abandonment'
wp option delete 'ac_lite_track_guest_cart_from_cart_page'
wp option delete 'wcal_auto_login_users'
wp option delete 'wcal_gdpr_consent_migrated'
wp option delete 'wcal_guest_cart_capture_msg'
wp option delete 'wcal_logged_cart_capture_msg'
wp option delete 'wcal_enable_gdpr_consent'
wp option delete 'ac_lite_delete_redundant_queries'
wp option delete 'wcal_enable_cart_emails'
wp option delete 'wcal_add_utm_to_links'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_calc_taxes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time'"
wp option delete 'woocommerce_erasure_request_removes_order_data'
wp option delete 'wcal_gdpr_allow_opt_out'
wp option delete 'wcal_gdpr_opt_out_message'
wp option delete 'wcal_scheduler_update_dismiss'
wp option delete 'wcal_auto_login_notice_dismiss'
wp option delete 'wcal_previous_version'
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'wcap_restrict_ip_address'
wp option delete 'wcap_restrict_email_address'
wp option delete 'wcap_restrict_domain_address'
wp option delete 'wcap_restrict_countries'
wp option delete 'wcal_allow_tracking'
wp option delete 'wcal_delete_coupon_data'
wp option delete 'ac_cart_abandoned_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp option delete 'ts_tracker_last_send'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_country'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activate_time'"
wp option delete 'wcap_migrated_from_lite'
wp option delete 'wcal_upgrade_to_pro_notice_dismissed'
wp option delete 'wcal_upgrade_to_pro_notice_expired_dismissed'
wp option delete 'wcap_edd_license_download_type'
wp option delete 'wcap_deactivated_due_to_trial_expiry'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_ac_email_body'
wp option delete 'woocommerce_ac_default_templates_installed'
wp option delete 'wcal_security_key'
wp option delete 'ac_security_key'
wp option delete 'wcal_activate_time'
wp option delete 'ac_lite_delete_alter_table_queries'
wp option delete 'wcal_ts_tracker_last_send'
wp option delete 'wcal_welcome_page_shown_time'
wp option delete 'wcal_welcome_page_shown'
wp option delete 'wcal_cron_time_duration'

# Delete Transients
wp transient delete 'wcal_email_sent_id'
wp transient delete 'wcal_abandoned_id'
wp transient delete 'wcal_c'
wp transient delete 'wcal_user_id'

# Clear Cron Jobs
wp cron event delete 'woocommerce_ac_send_email_action'
wp cron event delete 'wcal_clear_carts'
wp cron event delete 'wcal_ts_tracker_send_event'
wp cron event delete 'woocommerce_ac_delete_coupon_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcal_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcal_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcal_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcal_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_ac_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_ac_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_ac_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_ac_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_second_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_first_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_third_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_second_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fourth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_third_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fifth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fourth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_fifth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sixth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_seventh_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sixth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_eigth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_seventh_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ninth_notice_ignore'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_eigth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ninth_notice_ignore_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_ac_modified_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_ac_modified_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_ac_modified_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_ac_modified_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
