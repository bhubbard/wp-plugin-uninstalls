#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_default_country'
wp option delete 'autoship_token_auth'
wp option delete 'autoship_refresh_token'
wp option delete 'autoship_token_expires_in'
wp option delete 'autoship_token_created_at'
wp option delete 'autoship_site_id'
wp option delete 'airwallex-online-payments-gatewayairwallex_general_settings'
wp option delete 'airwallex_client_id'
wp option delete 'airwallex_api_key'
wp option delete 'fkwcs_mode'
wp option delete 'fkwcs_test_pub_key'
wp option delete 'fkwcs_test_secret_key'
wp option delete 'fkwcs_pub_key'
wp option delete 'fkwcs_secret_key'
wp option delete 'wc_square_settings'
wp option delete 'autoship_v2_portal_url'
wp option delete 'autoship_quicklinks_rate_limiter'
wp option delete 'autoship_quicklinks_scanner_config'
wp option delete 'autoship_quicklinks_settings'
wp option delete 'autoship_plugin_registration_lead_id'
wp option delete 'autoship_quicklaunch_login_token'
wp option delete 'autoship_quicklaunch_login_token_auth'
wp option delete 'autoship_quicklaunch_login_token_bearer'
wp option delete 'autoship_quicklaunch_login_token_user_id'
wp option delete 'autoship_quicklaunch_login_sites'
wp option delete 'autoship_quicklaunch_login_operation'
wp option delete 'autoship_quicklaunch_login_user'
wp option delete 'autoship_quicklaunch_login_password'
wp option delete 'autoship_quicklaunch_product'
wp option delete 'autoship_quicklaunch_last_step'
wp option delete 'autoship_quicklaunch_completed'
wp option delete 'autoship_product_sync_settings_batch'
wp option delete 'autoship_product_sync_settings_enabled'
wp option delete 'autoship_product_sync_settings_logs'
wp option delete 'autoship_product_sync_settings_interval'
wp option delete 'autoship_product_sync_last_status'
wp option delete 'autoship_product_sync_last_timestamp'
wp option delete 'autoship_product_sync_last_interval'
wp option delete 'autoship_product_sync_last_batch_size'
wp option delete 'autoship_product_sync_last_processing_time'
wp option delete 'autoship_product_sync_last_actual_size'
wp option delete 'autoship_product_sync_last_actual_ids'
wp option delete 'autoship_logging_state'
wp option delete 'autoship_debug_state'
wp option delete 'autoship_logs_last_cleanup'
wp option delete 'autoship_nextime_site_token'
wp option delete 'autoship_nextime_site_id'
wp option delete 'autoship_nextime_integration_id'
wp option delete 'autoship_nextime_display_delivery_date'
wp option delete 'autoship_nextime_align_next_occurrence_date'
wp option delete 'autoship_nextime_enabled'
wp option delete 'autoship_nextime_last_check_timestamp'
wp option delete 'autoship_nextime_last_check_status'
wp option delete 'autoship_client_secret'
wp option delete 'autoship_client_id'
wp option delete 'autoship_flush_rewrite_rules_flag'
wp option delete 'autoship_first_activation'
wp option delete 'active_sitewide_plugins'
wp option delete 'autoship_api_keys_author'
wp option delete 'autoship_saved_site_processing_version'
wp option delete '_autoship_site_settings_expiration'
wp option delete '_autoship_site_settings'
wp option delete 'autoship_persistant_notices'
wp option delete 'autoship_user_id'
wp option delete 'autoship_scheduled_orders_html'
wp option delete 'autoship_health'
wp option delete 'autoship_health_details'
wp option delete '_autoship_last_integration_check_utc'
wp option delete 'autoship_cart_schedule_options_enabled'
wp option delete 'autoship_last_export'
wp option delete 'autoship_free_shipping'
wp option delete 'autoship_upsert_stats'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_wc_autoship_stripe_settings'
wp option delete 'woocommerce_wc_autoship_paypal_settings'
wp option delete 'woocommerce_wc_autoship_braintree_settings'
wp option delete 'woocommerce_wc_autoship_authorize_net_settings'
wp option delete 'woocommerce_wc_autoship_cyber_source_settings'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_weight_unit'
wp option delete '_autoship_sync_all_products_enabled'
wp option delete 'autoship_product_message'
wp option delete '_autoship_all_products_sync_summary_meta'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'autoship_webchat_directline_secret'
wp option delete '_autoship_transition_version'
wp option delete 'wwpp_settings_minimum_order_quantity'
wp option delete 'wwpp_settings_minimum_order_price'
wp option delete 'wwpp_settings_minimum_requirements_logic'
wp option delete 'wwpp_settings_override_order_requirement_per_role'
wp option delete 'wwpp_option_wholesale_role_order_requirement_mapping'
wp option delete 'woocommerce_currency'
wp option delete '__autoship_bulk_scheduled_orders_wholesale_price_file'
wp option delete '__autoship_bulk_scheduled_orders_updated_with_wholesale_price_ext'

# Delete Transients
wp transient delete 'autoship_sync_upgrade_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_authorize_net_cim_customer_profile_id%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_authorize_net_cim_customer_profile_id%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_authorize_net_cim_customer_profile_id%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_authorize_net_cim_customer_profile_id%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_square_customer_id%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_square_customer_id%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_square_customer_id%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_square_customer_id%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoship_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoship_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoship_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoship_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_allow_frequency_options_bulk_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_allow_frequency_options_bulk_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_allow_frequency_options_bulk_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_allow_frequency_options_bulk_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_override_frequency_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_override_frequency_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_override_frequency_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_override_frequency_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_product_last_sync_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_product_last_sync_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_product_last_sync_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_product_last_sync_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoship_exclude_autoship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoship_exclude_autoship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoship_exclude_autoship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoship_exclude_autoship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoship_customer_metrics_updated_date_utc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoship_customer_metrics_updated_date_utc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoship_customer_metrics_updated_date_utc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoship_customer_metrics_updated_date_utc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_autoship_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_autoship_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_autoship_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_autoship_price'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_autoship_enable_autoship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_autoship_enable_autoship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_autoship_enable_autoship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_autoship_enable_autoship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_autoship_authorize_net_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_autoship_authorize_net_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_autoship_authorize_net_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_autoship_authorize_net_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_autoship_braintree_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_autoship_braintree_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_autoship_braintree_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_autoship_braintree_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_autoship_cyber_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_autoship_cyber_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_autoship_cyber_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_autoship_cyber_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nmi_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nmi_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nmi_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nmi_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_braintree_customer_id%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_braintree_customer_id%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_braintree_customer_id%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_braintree_customer_id%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wc_braintree_paypal_payment_tokens%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wc_braintree_paypal_payment_tokens%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wc_braintree_paypal_payment_tokens%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wc_braintree_paypal_payment_tokens%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_cybersource_customer_id%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_cybersource_customer_id%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_cybersource_customer_id%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_cybersource_customer_id%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_checkout_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_checkout_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_checkout_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_checkout_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_recurring_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_recurring_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_recurring_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_recurring_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_title_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_title_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_title_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_title_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_type_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_type_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_type_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_type_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_weightunit_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_weightunit_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_weightunit_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_weightunit_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_lengthunit_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_lengthunit_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_lengthunit_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_lengthunit_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_schedule_options_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_schedule_options_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_schedule_options_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_schedule_options_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_dissable_schedule_order_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_dissable_schedule_order_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_dissable_schedule_order_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_dissable_schedule_order_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_sync_active_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_sync_active_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_sync_active_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_sync_active_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_schedule_order_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_schedule_order_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_schedule_order_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_schedule_order_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_schedule_process_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_schedule_process_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_schedule_process_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_schedule_process_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_group_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_group_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_group_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_group_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_override_product_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_override_product_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_override_product_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_override_product_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_relative_next_occurrence_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_relative_next_occurrence_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_relative_next_occurrence_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_relative_next_occurrence_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_relative_next_occurrence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_relative_next_occurrence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_relative_next_occurrence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_relative_next_occurrence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_relative_next_occurrence_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_relative_next_occurrence_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_relative_next_occurrence_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_relative_next_occurrence_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_product_sync_summary_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_product_sync_summary_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_product_sync_summary_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_product_sync_summary_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upsell_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoship_schedule_order_wholesale_discount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoship_schedule_order_wholesale_discount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoship_schedule_order_wholesale_discount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoship_schedule_order_wholesale_discount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpp_override_min_order_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpp_override_min_order_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpp_override_min_order_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpp_override_min_order_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpp_min_order_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpp_min_order_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpp_min_order_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpp_min_order_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpp_override_min_order_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpp_override_min_order_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpp_override_min_order_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpp_override_min_order_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpp_min_order_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpp_min_order_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpp_min_order_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpp_min_order_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpp_min_order_logic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpp_min_order_logic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpp_min_order_logic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpp_min_order_logic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_wholesale_minimum_order_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_wholesale_minimum_order_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_wholesale_minimum_order_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_wholesale_minimum_order_quantity'"
