#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_coleteonline_settings'
wp option delete 'coleteonline_default_shipping_address_id'
wp option delete 'coleteonline_order_add_custom_shipping_status'
wp option delete 'coleteonline_order_change_to_shipping_status'
wp option delete 'coleteonline_order_auto_create_order'
wp option delete 'coleteonline_order_auto_create_on_status_on-hold_to_processing'
wp option delete 'colete_online_add_mail_tracking_link'
wp option delete 'coleteonline_advanced_product_fields'
wp option delete 'coleteonline_default_shipping_address_full_data'
wp option delete 'coleteonline_order_insurance'
wp option delete 'coleteonline_order_open_at_delivery'
wp option delete 'coleteonline_packaging_method'
wp option delete 'coleteonline_packaging_prefer_envelope'
wp option delete 'coleteonline_packaging_content_autocomplete'
wp option delete 'coleteonline_packaging_content_autocomplete_fixed_string'
wp option delete 'coleteonline_logged_in_once'
wp option delete 'coleteonline_price_free_shipping'
wp option delete 'coleteonline_price_free_shipping_min_amount'
wp option delete 'coleteonline_price_free_shipping_classes'
wp option delete 'coleteonline_display_fallback_price'
wp option delete 'coleteonline_service_selection_display_count'
wp option delete 'coleteonline_display_delivery_to_fixed_points_first'
wp option delete 'coleteonline_service_selection_custom_name_toggle'
wp option delete 'coleteonline_service_selection_custom_name'
wp option delete 'coleteonline_service_selection_first_custom_name_toggle'
wp option delete 'coleteonline_service_selection_custom_name_first'
wp option delete 'coleteonline_advanced_aggregated_services_custom_name'
wp option delete 'coleteonline_price_type'
wp option delete 'coleteonline_price_fixed_price_amount'
wp option delete 'coleteonline_price_add_fixed_amount'
wp option delete 'coleteonline_price_add_percent_amount'
wp option delete 'coleteonline_price_round_before_tax'
wp option delete 'coleteonline_price_free_shipping_after_name_text'
wp option delete 'coleteonline_delivery_to_fixed_points_restricted_payment_gateways'
wp option delete 'coleteonline_fallback_service_name'
wp option delete 'coleteonline_fallback_price_amount'
wp option delete 'coleteonline_order_client_reference'
wp option delete 'coleteonline_price_currency_type'
wp option delete 'coleteonline_price_base_currency'
wp option delete 'coleteonline_order_send_email_to_recipient'
wp option delete 'coleteonline_courier_selection_choice_type'
wp option delete 'coleteonline_courier_display_order_type'
wp option delete 'coleteonline_service_selection_type'
wp option delete 'coleteonline_service_list_hidden'
wp option delete 'coleteonline_courier_testing'
wp option delete 'coleteonline_address_optimized_search'
wp option delete 'coleteonline_checkout_form_type'
wp option delete 'coleteonline_address_validate_address_checkout'
wp option delete 'coleteonline_address_validate_phone'
wp option delete 'coleteonline_address_validate_email'
wp option delete 'coleteonline_address_separate_fields'
wp option delete 'coleteonline_address_city_field_type'
wp option delete 'coleteonline_address_street_field_type'
wp option delete 'coleteonline_address_street_number_field_type'
wp option delete 'coleteonline_address_email_show_first'
wp option delete 'coleteonline_address_shipping_show_phone'
wp option delete 'coleteonline_address_postal_code_show'
wp option delete 'coleteonline_delivery_to_fixed_points_restricted_products_message_toggle'
wp option delete 'coleteonline_delivery_to_fixed_points_restricted_products_message_text'
wp option delete 'coleteonline_delivery_to_fixed_points_restricted_message_toggle'
wp option delete 'coleteonline_delivery_to_fixed_points_restricted_message_text'
wp option delete 'coleteonline_order_open_at_delivery_text'
wp option delete 'coleteonline_order_custom_note'
wp option delete 'coleteonline_address_auto_select_city'
wp option delete 'coleteonline_address_auto_select_street'

# Delete Transients
wp transient delete 'coleteonline_login_hash'
wp transient delete 'coleteonline_courier_services'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_coleteonline_courier_extra_order_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_coleteonline_courier_extra_order_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_coleteonline_courier_extra_order_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_coleteonline_courier_extra_order_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coleteonline-shipping-product-not-eligible-for-locker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coleteonline-shipping-product-not-eligible-for-locker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coleteonline-shipping-product-not-eligible-for-locker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coleteonline-shipping-product-not-eligible-for-locker'"
