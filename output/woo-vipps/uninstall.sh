#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_vipps_settings'
wp option delete 'woo_vipps_checkout_activated'
wp option delete 'woo-vipps-configured'
wp option delete '_woo_vipps_webhooks'
wp option delete 'vipps_badge_options'
wp option delete 'vipps_button_options'
wp option delete '_vipps_dismissed_notices'
wp option delete 'woo_vipps_recurring_payments_activation'
wp option delete 'woocommerce_vipps_checkout_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pickup_locations'"
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'woocommerce_kco_settings'
wp option delete 'woocommerce_vipps_recurring_settings'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_feature_product_block_editor_enabled'
wp option delete 'ml_account_authenticated'
wp option delete 'mailchimp-woocommerce'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_vipps_recurring_checkout_page_id'
wp option delete 'woo-vipps-recurring-version'

# Delete Transients
wp transient delete '_vipps_save_admin_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_order_lock_%' OR option_name LIKE '_site_transient_order_lock_%'"
wp transient delete '_woo_vipps_qr_codes'
wp transient delete '_woo_vipps_unsynched_qr_codes'
wp transient delete '_vipps_keyset'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_maybe_cancel_due_charge_lock%' OR option_name LIKE '_site_transient_maybe_cancel_due_charge_lock%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cancel_subscription_lock%' OR option_name LIKE '_site_transient_cancel_subscription_lock%'"
wp transient delete '_vipps_recurring_token'

# Clear Cron Jobs
wp cron event delete 'vipps_cron_cleanup_hook'
wp cron event delete 'vipps_cron_missing_callback_hook'
wp cron event delete 'woocommerce_vipps_recurring_cancel_subscription'
wp cron event delete 'woocommerce_vipps_recurring_delete_pending_subscription'
wp cron event delete 'woocommerce_vipps_recurring_check_order_statuses'
wp cron event delete 'woocommerce_vipps_recurring_check_gateway_change_request'
wp cron event delete 'woocommerce_vipps_recurring_update_subscription_details_in_app'
wp cron event delete 'woocommerce_vipps_recurring_check_subscriptions_marked_for_deletion'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_buy_now_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_buy_now_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_buy_now_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_buy_now_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_show_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_show_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_show_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_show_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_vipps_shareable_link_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_vipps_shareable_link_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_vipps_shareable_link_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_vipps_shareable_link_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_shareable_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_shareable_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_shareable_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_shareable_links'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_qr_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_qr_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_qr_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_qr_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_qr_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_qr_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_qr_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_qr_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_qr_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_qr_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_qr_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_qr_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_qr_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_qr_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_qr_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_qr_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_qr_pid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_qr_pid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_qr_pid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_qr_pid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_qr_urltype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_qr_urltype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_qr_urltype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_qr_urltype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_qr_stored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_qr_stored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_qr_stored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_qr_stored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_just_connected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_just_connected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_just_connected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_just_connected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vipps_imageid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vipps_imageid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vipps_imageid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vipps_imageid'"
