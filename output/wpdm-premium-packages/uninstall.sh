#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_coupon'"
wp option delete '_wpdmpp_settings'
wp option delete '__wpdmpp_ssm_sent'
wp option delete 'wpdmpp_payout_duration'
wp option delete 'wpdmpp_payout_min_amount'
wp option delete 'wpdmpp_active_pom'
wp option delete 'wpdmpp_user_comission'
wp option delete '__wpdmpp_db_version'
wp option delete 'wpdmpp_mini_cart_settings'
wp option delete '__wpdm_author_dashboard'
wp option delete '__wpdmpp_order_note_templates'
wp option delete 'wpdmpp_ajaxed_addtocart'
wp option delete '_wpdmpp_users_orders'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_cart'"
wp option delete '__wpdm_user_dashboard'
wp option delete 'wpdmpp_paypal_webhook'
wp option delete '__wpdm_allowed_file_types'
wp option delete '__wpdmpp_new_sales_today'
wp option delete '__wpdmpp_new_orders_today'
wp option delete 'wpdmpp_setp_wizard_notice'
wp option delete '__wpdm_checkout_privacy'
wp option delete '__wpdm_checkout_privacy_label'

# Clear Cron Jobs
wp cron event delete 'wpdmpp_notify_to_renew'
wp cron event delete 'wpdmpp_delete_incomplete_order'
wp cron event delete 'wpdmpp_daily_sales_summary'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_billing_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_billing_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_billing_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_billing_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_store'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_store'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_store'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_store'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_files'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_sales_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_sales_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_sales_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_sales_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_sales_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_sales_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_sales_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_sales_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_taxable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_taxable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_taxable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_taxable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_enable_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_enable_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_enable_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_enable_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_fileinfo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_pay_as_you_want'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_sales_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_sales_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_sales_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_sales_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_sales_price_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_sales_price_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_sales_price_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_sales_price_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_assign_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_assign_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_assign_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_assign_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdmpp_total_spent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdmpp_total_spent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdmpp_total_spent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdmpp_total_spent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdmpp_payment_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdmpp_payment_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdmpp_payment_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdmpp_payment_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_price_variation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_price_variation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_price_variation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_price_variation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdmpp_list_opts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdmpp_list_opts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdmpp_list_opts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdmpp_list_opts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_z_user_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_z_user_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_z_user_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_z_user_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_store_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_store_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_store_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_store_owner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_last_login_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_enable_license_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_enable_license_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_enable_license_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_enable_license_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_product_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_product_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_product_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_product_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_free_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_free_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_free_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_free_downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_license_pack'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_license_pack'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_license_pack'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_license_pack'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_link_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__wpdm_public_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__wpdm_public_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__wpdm_public_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__wpdm_public_profile'"
