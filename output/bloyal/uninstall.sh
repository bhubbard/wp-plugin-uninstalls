#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bloyal_log_enable_disable'
wp option delete 'bloyal_domain_name'
wp option delete 'bloyal_access_key'
wp option delete 'logging_api_url'
wp option delete 'bloyal_tender_payments_mapping'
wp option delete 'bloyal_use_order_engine'
wp option delete 'director_url'
wp option delete 'pos_snippets_url'
wp option delete 'web_snippets_url'
wp option delete 'my_mobile_loyalty_url'
wp option delete 'grid_api_url_snippet'
wp option delete 'loyalty_engine_api_url_snippet'
wp option delete 'engagement_engine_api_url_snippet'
wp option delete 'order_engine_api_url_snippet'
wp option delete 'service_provider_gateway_api_url_snippet'
wp option delete 'web_snippets_api_url_snippet'
wp option delete 'payment_api_url_snippet'
wp option delete 'logging_api_url_snippet'
wp option delete 'bLoyal_web_snippets_storeUid'
wp option delete 'bLoyal_snippets_devices'
wp option delete 'bloyal_custom_loyaltyengine_api_url'
wp option delete 'loyalty_engine_api_url'
wp option delete 'bloyal_custom_grid_api_url'
wp option delete 'grid_api_url'
wp option delete 'web_snippets_api_url'
wp option delete 'bloyal_saved_device_snippets_lists'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'bloyal_snippets_access_key'
wp option delete 'bloyal_api_key'
wp option delete 'page_id'
wp option delete 'bloyal_access_key_verification_snippets'
wp option delete 'bloyal_snippets_domain_url'
wp option delete 'bloyal_snippets_radio_web_snippet_api'
wp option delete 'bloyal_snippets_default_device'
wp option delete 'bloyal_snippets_use_wordpress_login'
wp option delete 'bloyal_snippets_use_bloyal_login'
wp option delete 'bloyal_snippets_custom_grid_apiurl'
wp option delete 'bloyal_snippets_custom_loyaltyengine_apiurl'
wp option delete 'bloyal_snippet_custom_websnippet_apiurl'
wp option delete 'bloyal_snippet_custom_websnippethtml_apiurl'
wp option delete 'bloyal_snippets_custom_web_snippet_api_url'
wp option delete 'payment_snippets_codes'
wp option delete 'device_code'
wp option delete 'Device_Code'
wp option delete 'is_bloyal_custom_api_url'
wp option delete 'order_engine_api_url'
wp option delete 'bloyal_domain_url'
wp option delete 'bloyal_gift_card_tender_code'
wp option delete 'bloyal_loyalty_dollars_tender_code'
wp option delete 'bloyal_on_account_tender_code'
wp option delete 'bloyal_applied_shipping_charges'
wp option delete 'bloyal_applied_taxes'
wp option delete 'rowcount'
wp option delete 'bloyal_shipping_service'
wp option delete 'bloyal_shipping_carrier'
wp option delete 'bloyal_shipping_method_name'
wp option delete 'bloyal_custom_orderengine_api_url'
wp option delete 'bloyal_custompayment_api_url'
wp option delete 'bloyal_custom_logging_api_url'
wp option delete 'bloyal_snippet_code'
wp option delete 'bloyal_snippet_informational_code'
wp option delete 'bloyal_snippet_confirmation_code'
wp option delete 'bloyal_snippet_problem_code'
wp option delete 'bloyal_display_DOB'
wp option delete 'bloyal_required_DOB'
wp option delete 'bloyal_display_Phone'
wp option delete 'bloyal_required_Phone'
wp option delete 'bloyal_display_Email'
wp option delete 'bloyal_required_Email'
wp option delete 'bloyal_display_order_comments'
wp option delete 'loyalty_block'
wp option delete 'bloyal_display_address_Book'
wp option delete 'bloyal_shipping_pickup'
wp option delete 'bloyal_pickup_row_count'
wp option delete 'bloyal_click_and_collect_status'
wp option delete 'bloyal_click_collect_label'
wp option delete 'click_collect_error'
wp option delete 'bloyal_apply_full_balance_giftcard'
wp option delete 'bloyal_apply_full_balance_loyalty'
wp option delete 'bloyal_apply_in_increment_of_giftcard'
wp option delete 'bloyal_apply_in_increment_of_loyalty'
wp option delete 'bloyal_access_key_verification'
wp option delete 'is_custom_api_url_used'
wp option delete 'bloyal_snippets_codes'
wp option delete 'engagement_engine_api_url'
wp option delete 'service_provider_gateway_api_url'
wp option delete 'payment_api_url'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bloyal_%'"
wp option delete 'bloyal_Tenders'
wp option delete 'bloyal_ShippingCarriers'
wp option delete 'woocommerce_version'

# Clear Cron Jobs
wp cron event delete 'bloyal_cron_hook'
wp cron event delete 'bloyal_cron_log_hook'
wp cron event delete 'bloyal_snippet_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loyalty_dollars_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loyalty_dollars_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loyalty_dollars_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loyalty_dollars_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_loyalty_dollars_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_loyalty_dollars_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_loyalty_dollars_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_loyalty_dollars_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift_card_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift_card_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift_card_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift_card_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift_card_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift_card_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift_card_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift_card_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gift_card_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gift_card_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gift_card_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gift_card_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birth_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birth_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birth_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birth_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_extenal_discount_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_extenal_discount_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_extenal_discount_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_extenal_discount_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_order_level_discount_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_order_level_discount_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_order_level_discount_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_order_level_discount_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_applied_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_applied_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_applied_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_applied_coupons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stored_payment_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stored_payment_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stored_payment_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stored_payment_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_on_account_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_on_account_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_on_account_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_on_account_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_on_account_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_on_account_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_on_account_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_on_account_transaction_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stored_payment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stored_payment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stored_payment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stored_payment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_gift_card_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_gift_card_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_gift_card_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_gift_card_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_loyalty_dollar_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_loyalty_dollar_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_loyalty_dollar_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_loyalty_dollar_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_pickup_location_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_pickup_location_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_pickup_location_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_pickup_location_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_pickup_location_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_pickup_location_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_pickup_location_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_pickup_location_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_shipping_date_of_birth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_shipping_date_of_birth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_shipping_date_of_birth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_shipping_date_of_birth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_shipping_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_shipping_gift_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_shipping_gift_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_shipping_gift_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_shipping_gift_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_billing_date_of_birth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_billing_date_of_birth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_billing_date_of_birth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_billing_date_of_birth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bloyal_order_shipment_discount_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bloyal_order_shipment_discount_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bloyal_order_shipment_discount_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bloyal_order_shipment_discount_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
