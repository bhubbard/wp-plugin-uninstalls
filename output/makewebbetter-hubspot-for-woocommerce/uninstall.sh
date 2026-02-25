#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hubwoo_static_redirect'
wp option delete 'hubwoo_connection_complete'
wp option delete 'hubwoo_connection_issue'
wp option delete 'hubwoo_hide_rev_notice'
wp option delete 'hubwoo_onboard_user'
wp option delete 'hubwoo_hide_festive_notice'
wp option delete 'hubwoo_hpos_license_check'
wp option delete 'hubwoo_hide_hpos_notice'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'hubwoo_pro_guest_sync_enable'
wp option delete 'hubwoo_greeting_displayed_setup'
wp option delete 'hubwoo-selected-user-roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hubwoo_batch_users_to_sync_%'"
wp option delete 'mwb_hubwoo_guest_user_cart'
wp option delete 'hubwoo_last_sync_date'
wp option delete 'hubwoo_pro_hubspot_id'
wp option delete 'hubwoo_background_process_running'
wp option delete 'hubwoo_contact_vid_update'
wp option delete 'hubwoo_deals_sync_running'
wp option delete 'hubwoo_abncart_timing'
wp option delete 'hubwoo_abandoned_property_update'
wp option delete 'woocommerce_currency'
wp option delete 'hubwoo_abncart_delete_old_data'
wp option delete 'hubwoo_abncart_delete_after'
wp option delete 'hubwoo_customers_role_settings'
wp option delete 'hubwoo_ecomm_setup_completed'
wp option delete 'hubwoo_last_time_order_sync'
wp option delete 'hubwoo_product_scope_needed'
wp option delete 'hubwoo_deals_sync_total'
wp option delete 'hubwoo_ecomm_order_ocs_from_date'
wp option delete 'hubwoo_ecomm_order_ocs_upto_date'
wp option delete 'hubwoo_ecomm_order_ocs_status'
wp option delete 'hubwoo_ecomm_order_date_allow'
wp option delete 'hubwoo_fetched_deal_stages'
wp option delete 'hubwoo_ecomm_pipeline_created'
wp option delete 'hubwoo_total_ocs_need_sync'
wp option delete 'hubwoo-cron-notice-dismiss'
wp option delete 'hubwoo_plugin_activated_time'
wp option delete 'hubwoo_checkout_form_id'
wp option delete 'hubwoo_pro_lists_setup_completed'
wp option delete 'hubwoo_newsletter_property_update'
wp option delete 'hubwoo_product_property_created'
wp option delete 'hubwoo_deal_property_created'
wp option delete 'hubwoo_contact_new_property_created'
wp option delete 'hubwoo_access_workflow'
wp option delete 'hubwoo_potal_pipelines'
wp option delete 'hubwoo_ecomm_pipeline_id'
wp option delete 'hubwoo_ecomm_won_stages'
wp option delete 'hubwoo-properties-created'
wp option delete 'hubwoo_connection_setup_established'
wp option delete 'hubwoo_total_ocs_contact_need_sync'
wp option delete 'hubwoo_ocs_data_synced'
wp option delete 'hubwoo_ocs_contacts_synced'
wp option delete 'hubwoo_fields_setup_completed'
wp option delete 'hubwoo_pipeline_setup_completed'
wp option delete 'hubwoo_clear_previous_options'
wp option delete 'hubwoo-groups-created'
wp option delete 'hubwoo-lists-created'
wp option delete 'hubwoo-workflows-created'
wp option delete 'hubwoo_pro_alert_param_set'
wp option delete 'hubwoo_deals_current_sync_total'
wp option delete 'hubwoo_start_product_sync'
wp option delete 'hubwoo_products_to_sync'
wp option delete 'hubwoo_ecomm_final_mapping'
wp option delete 'hubwoo_assoc_deal_cmpy_enable'
wp option delete 'hubwoo_deal_multi_currency_enable'
wp option delete 'hubwoo_no_status'
wp option delete 'hubwoo_deals_current_sync_count'
wp option delete 'hubwoo_rfm_5'
wp option delete 'hubwoo_from_rfm_4'
wp option delete 'hubwoo_to_rfm_4'
wp option delete 'hubwoo_from_rfm_3'
wp option delete 'hubwoo_to_rfm_3'
wp option delete 'hubwoo_from_rfm_2'
wp option delete 'hubwoo_to_rfm_2'
wp option delete 'hubwoo_rfm_1'
wp option delete 'hubwoo_ecomm_deal_enable'
wp option delete 'hubwoo_checkout_form_created'
wp option delete 'hubwoo_checkout_optin_enable'
wp option delete 'hubwoo_registeration_optin_enable'
wp option delete 'hubwoo_subs_settings_enable'
wp option delete 'hubwoo_abncart_enable_addon'
wp option delete 'hubwoo_abncart_guest_cart'
wp option delete 'hubwoo_pro_get_started'
wp option delete 'hubwoo_pro_version'
wp option delete 'hubwoo_pro_setup_completed'
wp option delete 'hubwoo_pro_oauth_success'
wp option delete 'hubwoo_pro_settings_enable'
wp option delete 'hubwoo_pro_valid_client_ids_stored'
wp option delete 'hubwoo_pro_token_expiry'
wp option delete 'WooCommerce: set Order Recency 1 Ratings'
wp option delete 'WooCommerce: set Order Recency 2 Ratings'
wp option delete 'WooCommerce: set Order Recency 3 Ratings'
wp option delete 'WooCommerce: set Order Recency 4 Ratings'
wp option delete 'WooCommerce: set Order Recency 5 Ratings'
wp option delete 'WooCommerce: MQL to Customer lifecycle stage Conversion'
wp option delete 'WooCommerce: Welcome New Customer & Get a 2nd Order'
wp option delete 'WooCommerce: 2nd Order Thank You & Get a 3rd Order'
wp option delete 'WooCommerce: 3rd Order Thank You'
wp option delete 'WooCommerce: ROI Calculation'
wp option delete 'WooCommerce: Order Workflow'
wp option delete 'WooCommerce: Update Historical Order Recency Rating'
wp option delete 'WooCommerce: After order Workflow'
wp option delete 'WooCommerce: Enroll Customers for Recency Settings'
wp option delete 'hubwoo_abncart_added'
wp option delete 'hubwoo_subs_setup_completed'
wp option delete 'hubwoo_pro_account_scopes'
wp option delete 'hubwoo_pro_access_token'
wp option delete 'hubwoo_ecomm_deal_stage_ids'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_log'"
wp option delete 'hubwoo_pro_refresh_token'
wp option delete 'hubwoo_pro_send_suggestions'
wp option delete 'hubwoo_pro_api_validation_error_message'
wp option delete 'hubwoo_pro_invalid_emails'
wp option delete 'hubwoo-error-api-calls'
wp option delete 'hubwoo-success-api-calls'
wp option delete 'hubwoo_ecomm_store_id'
wp option delete 'hubwoo_customers_manual_sync'
wp option delete 'hubwoo_users_from_date'
wp option delete 'hubwoo_users_upto_date'
wp option delete 'hubwoo-selected-order-status'
wp option delete 'hubwoo_ecomm_closedate_days'
wp option delete 'hubwoo_checkout_optin_label'
wp option delete 'hubwoo_registeration_optin_label'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_pro_user_data_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_pro_user_data_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_pro_user_data_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_pro_user_data_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_user_vid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_user_vid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_user_vid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_user_vid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_ecomm_deal_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_ecomm_deal_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_ecomm_deal_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_ecomm_deal_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_pro_last_addtocart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_pro_last_addtocart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_pro_last_addtocart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_pro_last_addtocart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_pro_cart_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_pro_cart_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_pro_cart_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_pro_cart_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_pro_user_left_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_pro_user_left_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_pro_user_left_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_pro_user_left_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_pro_user_cart_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_ecomm_pro_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_ecomm_pro_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_ecomm_pro_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_ecomm_pro_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_product_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_product_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_product_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_product_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_invalid_contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_invalid_contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_invalid_contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_invalid_contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_pro_guest_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_pro_guest_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_pro_guest_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_pro_guest_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_ecomm_deal_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_ecomm_deal_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_ecomm_deal_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_ecomm_deal_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_order_line_item_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_order_line_item_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_order_line_item_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_order_line_item_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_ecomm_invalid_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_ecomm_invalid_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_ecomm_invalid_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_ecomm_invalid_pro'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_vid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_modified_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_modified_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_modified_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_modified_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_preferred_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_preferred_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_preferred_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_preferred_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_registeration_marketing_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_registeration_marketing_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_registeration_marketing_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_registeration_marketing_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hubwoo_checkout_marketing_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hubwoo_checkout_marketing_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hubwoo_checkout_marketing_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hubwoo_checkout_marketing_optin'"
