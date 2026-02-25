#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wspsc_plugin_activated_time'
wp option delete 'cart_currency_symbol'
wp option delete 'wpspc_enable_pp_smart_checkout'
wp option delete 'wpspc_pp_live_client_id'
wp option delete 'wpspc_pp_live_secret'
wp option delete 'wpspc_pp_test_client_id'
wp option delete 'wpspc_pp_test_secret'
wp option delete 'wpspc_pp_smart_checkout_btn_size'
wp option delete 'wpspc_pp_smart_checkout_btn_color'
wp option delete 'wpspc_pp_smart_checkout_btn_shape'
wp option delete 'wpspc_pp_smart_checkout_btn_layout'
wp option delete 'wpspc_pp_smart_checkout_payment_method_credit'
wp option delete 'wpspc_pp_smart_checkout_payment_method_elv'
wp option delete 'wpspc_send_buyer_email'
wp option delete 'wpspc_buyer_from_email'
wp option delete 'wpspc_buyer_email_subj'
wp option delete 'wpspc_buyer_email_body'
wp option delete 'wpspc_send_seller_email'
wp option delete 'wpspc_notify_email_address'
wp option delete 'wpspc_seller_email_subj'
wp option delete 'wpspc_seller_email_body'
wp option delete 'wpspsc_enable_coupon'
wp option delete 'wpsc_enable_coupon'
wp option delete 'wpsc_email_content_type'
wp option delete 'wp_shopping_cart_enable_sandbox'
wp option delete 'cart_payment_currency'
wp option delete 'wp_shopping_cart_collect_address'
wp option delete 'wp_shopping_cart_use_profile_shipping'
wp option delete 'cart_paypal_email'
wp option delete 'addToCartButtonName'
wp option delete 'wp_cart_title'
wp option delete 'wp_cart_empty_text'
wp option delete 'cart_return_from_paypal_url'
wp option delete 'cart_cancel_from_paypal_url'
wp option delete 'cart_products_page_url'
wp option delete 'wp_shopping_cart_auto_redirect_to_checkout_page'
wp option delete 'cart_checkout_page_url'
wp option delete 'wspsc_open_pp_checkout_in_new_tab'
wp option delete 'wp_shopping_cart_reset_after_redirection_to_return_page'
wp option delete 'wp_shopping_cart_image_hide'
wp option delete 'wp_cart_paypal_co_page_style'
wp option delete 'wp_shopping_cart_strict_email_check'
wp option delete 'wspsc_disable_nonce_add_cart'
wp option delete 'wp_shopping_cart_do_not_show_qty_in_cart'
wp option delete 'wspsc_disable_price_check_add_cart'
wp option delete 'wpsc_show_empty_cart_option'
wp option delete 'wp_use_aff_platform'
wp option delete 'shopping_cart_anchor'
wp option delete 'wpspc_disable_standard_checkout'
wp option delete 'wpsc_enable_ajax_add_to_cart'
wp option delete 'wp_shopping_cart_enable_debug'
wp option delete 'wp_shopping_cart_enable_tnc'
wp option delete 'wp_shopping_cart_tnc_text'
wp option delete 'wpsc_enable_manual_checkout'
wp option delete 'wpsc_manual_checkout_form_instruction'
wp option delete 'wpsc_manual_checkout_btn_text'
wp option delete 'wpsc_manual_checkout_hide_country_field'
wp option delete 'wpsc_send_buyer_payment_instruction_email'
wp option delete 'wpsc_buyer_payment_instruction_email_subject'
wp option delete 'wpsc_buyer_payment_instruction_email_body'
wp option delete 'wpsc_send_seller_manual_checkout_notification_email'
wp option delete 'wpsc_seller_manual_checkout_notification_email_address'
wp option delete 'wpsc_seller_manual_checkout_notification_email_subject'
wp option delete 'wpsc_seller_manual_checkout_notification_email_body'
wp option delete 'cart_base_shipping_cost'
wp option delete 'cart_free_shipping_threshold'
wp option delete 'enable_shipping_by_region'
wp option delete 'wpsc_shipping_region_variations'
wp option delete 'wpspc_enable_stripe_checkout'
wp option delete 'wpspc_stripe_live_publishable_key'
wp option delete 'wpspc_stripe_live_secret_key'
wp option delete 'wpspc_stripe_test_publishable_key'
wp option delete 'wpspc_stripe_test_secret_key'
wp option delete 'wpspc_stripe_collect_address'
wp option delete 'wpsc_stripe_collect_shipping_address'
wp option delete 'wpsc_enable_stripe_automatic_tax'
wp option delete 'wpsc_stripe_allowed_shipping_countries'
wp option delete 'wpsc_auto_send_receipt_and_invoices'
wp option delete 'wpspc_stripe_button_image_url'
wp option delete 'wpsc_tax_percentage'
wp option delete 'wpsc_enable_tax_by_region'
wp option delete 'wpsc_tax_region_variations'
wp option delete 'wpspsc_coupons_collection'
wp option delete 'wpsc_coupons_collection'
wp option delete 'wspsc_logfile_suffix'
wp option delete 'wspsc_private_key_one'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_txn_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_txn_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_txn_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_txn_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_ipaddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_ipaddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_ipaddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_ipaddress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_total_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_total_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_total_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_total_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_shipping_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_shipping_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_shipping_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_shipping_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpspsc_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpspsc_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpspsc_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpspsc_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_applied_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_applied_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_applied_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_applied_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpspsc_items_ordered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpspsc_items_ordered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpspsc_items_ordered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpspsc_items_ordered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_payment_gateway'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_payment_gateway'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_payment_gateway'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_payment_gateway'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_shipping_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_shipping_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_shipping_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_shipping_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tax_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tax_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tax_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tax_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_billing_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_billing_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_billing_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_billing_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_buyer_email_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_buyer_email_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_buyer_email_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_buyer_email_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_tax_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_tax_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_tax_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_tax_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_items_ordered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_items_ordered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_items_ordered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_items_ordered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_cart_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_cart_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_cart_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_cart_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_cart_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_cart_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_cart_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_cart_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_cart_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_cart_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_cart_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_cart_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpspsc_discount_applied_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpspsc_discount_applied_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpspsc_discount_applied_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpspsc_discount_applied_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_discount_applied_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_discount_applied_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_discount_applied_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_discount_applied_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpspsc_applied_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpspsc_applied_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpspsc_applied_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpspsc_applied_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_applied_coupon_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_applied_coupon_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_applied_coupon_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_applied_coupon_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsc_cart_custom_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsc_cart_custom_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsc_cart_custom_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsc_cart_custom_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expected_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expected_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expected_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expected_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expected_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expected_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expected_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expected_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trial_billing_cycle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trial_billing_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trial_billing_cycle_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_cycle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_cycle_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_cycle_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recurring_billing_reattempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_subscription_plan_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pp_subscription_plan_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pp_subscription_plan_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pp_subscription_plan_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pp_subscription_plan_mode'"
