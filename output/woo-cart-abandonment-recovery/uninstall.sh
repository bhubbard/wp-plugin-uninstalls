#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcf_ca_show_weekly_report_email_notice'
wp option delete 'cartflows_ca_use_new_ui'
wp option delete 'wcf_ca_global_param'
wp option delete 'wcf_ca_excludes_orders'
wp option delete 'cartflows_ca_partner_url_param'
wp option delete 'wcf_ca_all_db_tables_created'
wp option delete 'wcf_ca_version'
wp option delete 'wcar_do_redirect'
wp option delete 'wcar_onboarding_completed'
wp option delete 'wcf_ca_status'
wp option delete 'wcf_ca_cron_run_time'
wp option delete 'wcf_ca_ignore_users'
wp option delete 'wcar_email_admin_on_recovery'
wp option delete 'wcf_ca_auto_delete_coupons'
wp option delete 'wcf_ca_delete_coupons'
wp option delete 'wcf_ca_from_name'
wp option delete 'wcf_ca_from_email'
wp option delete 'wcf_ca_reply_email'
wp option delete 'wcf_ca_send_recovery_report_emails_to_admin'
wp option delete 'wcf_ca_admin_email'
wp option delete 'wcf_ca_zapier_tracking_status'
wp option delete 'wcf_ca_zapier_cart_abandoned_webhook'
wp option delete 'wcf_ca_coupon_expiry'
wp option delete 'wcf_ca_coupon_expiry_unit'
wp option delete 'wcf_ca_coupon_code_status'
wp option delete 'wcf_ca_discount_type'
wp option delete 'wcf_ca_coupon_amount'
wp option delete 'wcf_ca_gdpr_status'
wp option delete 'wcf_ca_gdpr_message'
wp option delete 'wcf_ca_delete_plugin_data'
wp option delete 'wcar_usage_optin'
wp option delete 'cf_analytics_optin'
wp option delete 'allowed_astra_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'nps-survey-cartflows-ca'
wp option delete 'bsf_product_referers'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'wcf_email_body'
wp option delete 'wcf_ca_free_shipping_coupon'
wp option delete 'wcf_ca_individual_use_only'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcar_rollback_versions_%' OR option_name LIKE '_site_transient_wcar_rollback_versions_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcar_%' OR option_name LIKE '_site_transient_wcar_%'"
wp transient delete 'wcar_redirect_to_onboarding'
wp transient delete 'update_plugins'
wp transient delete 'wcf_ca_show_message'
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'
wp transient delete 'woocommerce_ca_delete_garbage_coupons'

# Clear Cron Jobs
wp cron event delete 'cartflows_ca_update_order_status_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
