#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'sublium_wcs_wizard_progress'
wp option delete 'sublium_wcs_setup_notice_dismissed'
wp option delete 'woocommerce_currency'
wp option delete 'woocs'
wp option delete 'wcs_paypal_rt_enabled_accounts'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_reply_to_address'
wp option delete 'sublium_wcs_email_template_updated'
wp option delete 'woocommerce_myaccount_sublium_subscriptions_endpoint'
wp option delete 'woocommerce_fkwcppcp_paypal_settings'
wp option delete 'woocommerce_queue_flush_rewrite_rules'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'sublium_wcs_subscriptions_without_tokens'
wp option delete 'sublium_wcs_recent_gateway_api_errors'
wp option delete 'sublium_wcs_disabled_gateways'
wp option delete 'fkwcppcp_paypal_live_client_id'
wp option delete 'fkwcppcp_paypal_live_secret_key'
wp option delete 'fkwcppcp_paypal_sandbox_client_id'
wp option delete 'fkwcppcp_paypal_sandbox_secret_key'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp option delete 'sublium_wcs_activation_date'
wp option delete 'sublium_wcs_global_block_editor_setting'
wp option delete 'sublium_wcs_menu_status'
wp option delete 'trp_settings'
wp option delete 'sublium_wcs_is_opted_data'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'sublium_learndash_remove_access_after_failed'
wp option delete 'sublium_learndash_disable_access_removal_on_expiration'
wp option delete 'sublium_memberpress_remove_access_after_failed'
wp option delete 'sublium_tutorlms_remove_access_after_failed'
wp option delete 'sublium_wcm_remove_access_after_failed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_expires'"
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'sublium_wcs_normalize'
wp option delete 'sublium_wcs_cron_batch_size'

# Delete Transients
wp transient delete 'sublium_sandbox_admin_notices'
wp transient delete 'sublium_gateway_connect_link_fkwcs_stripe'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sublium_gateway_connect_link_%' OR option_name LIKE '_site_transient_sublium_gateway_connect_link_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sublium_wcs_header_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sublium_wcs_header_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sublium_wcs_header_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sublium_wcs_header_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sublium_wcs_table_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sublium_wcs_table_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sublium_wcs_table_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sublium_wcs_table_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sublium_wcs_disable_one_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sublium_wcs_disable_one_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sublium_wcs_disable_one_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sublium_wcs_disable_one_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sublium_wcs_excluded_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sublium_wcs_excluded_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sublium_wcs_excluded_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sublium_wcs_excluded_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sublium_churn_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sublium_churn_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sublium_churn_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sublium_churn_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sublium_price_strings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sublium_price_strings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sublium_price_strings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sublium_price_strings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfacp_checkout_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_referrals_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_referrals_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_referrals_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_referrals_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_related_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_related_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_related_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_related_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_related_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_related_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_related_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_related_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_access_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_access_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_access_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_access_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'learndash_group_enrolled_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'learndash_group_enrolled_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'learndash_group_enrolled_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'learndash_group_enrolled_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sublium_wcs_learndash_enrolled_courses_access_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sublium_wcs_learndash_enrolled_courses_access_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sublium_wcs_learndash_enrolled_courses_access_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sublium_wcs_learndash_enrolled_courses_access_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepr_membership_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepr_membership_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepr_membership_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepr_membership_id'"
