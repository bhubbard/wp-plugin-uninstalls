#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_sherpa_settings'
wp option delete 'sherpa_settings_product'
wp option delete 'sherpa_delivery_settings_operating_day'
wp option delete 'sherpa_delivery_settings_operating_time_wrapper'
wp option delete 'sherpa_delivery_settings_prep_time'
wp option delete 'sherpa_sherpa_delivery_settings_cutoff_time'
wp option delete 'sherpa_access_data'
wp option delete 'sherpa_settings_later_delivery_options_service_2hr'
wp option delete 'sherpa_settings_later_delivery_options_service_4hr'
wp option delete 'sherpa_settings_later_delivery_options_service_at'
wp option delete 'sherpa_settings_later_delivery_options_service_1hr'
wp option delete 'sherpa_settings_later_delivery_options_service_bulk_rate'
wp option delete 'sherpa_settings_sameday_delivery_options_service_2hr'
wp option delete 'sherpa_settings_sameday_delivery_options_service_4hr'
wp option delete 'sherpa_settings_sameday_delivery_options_service_at'
wp option delete 'sherpa_settings_sameday_delivery_options_service_1hr'
wp option delete 'sherpa_settings_sameday_delivery_options_service_bulk_rate'
wp option delete 'sherpa_credentials_account'
wp option delete 'sherpa_credentials_password'
wp option delete 'sherpa_credentials_sandbox'
wp option delete 'sherpa_settings_title'
wp option delete 'sherpa_settings_store_name'
wp option delete 'sherpa_settings_notes'
wp option delete 'sherpa_settings_shipment'
wp option delete 'sherpa_settings_add_tracking_link'
wp option delete 'sherpa_settings_vehicle'
wp option delete 'sherpa_settings_delivery_rates'
wp option delete 'sherpa_settings_add_margin'
wp option delete 'sherpa_settings_item_description'
wp option delete 'sherpa_settings_flat_rate_1_hour'
wp option delete 'sherpa_settings_flat_rate_2_hour'
wp option delete 'sherpa_settings_flat_rate_4_hour'
wp option delete 'sherpa_settings_flat_rate_same_day'
wp option delete 'sherpa_settings_flat_rate_bulk_rate'
wp option delete 'sherpa_settings_outside_radius_1_hour'
wp option delete 'sherpa_settings_outside_radius_2_hour'
wp option delete 'sherpa_settings_outside_radius_4_hour'
wp option delete 'sherpa_settings_outside_radius_same_day'
wp option delete 'sherpa_settings_outside_radius_bulk_rate'
wp option delete 'sherpa_settings_service_sameday'
wp option delete 'sherpa_settings_sameday_delivery_options_sameday'
wp option delete 'sherpa_settings_service_later'
wp option delete 'sherpa_settings_later_delivery_options_later'
wp option delete 'sherpa_settings_authority_to_leave'
wp option delete 'sherpa_settings_send_sms'
wp option delete 'sherpa_settings_specified_recipient'
wp option delete 'sherpa_settings_contains_alcohol'
wp option delete 'sherpa_settings_contains_fragile_items'
wp option delete 'sherpa_settings_contains_scheduled_medication'
wp option delete 'sherpa_settings_contains_tobacco'
wp option delete 'sherpa_settings_requires_hi_vis_vest'
wp option delete 'sherpa_settings_sameday_delivery_options_service_AT'
wp option delete 'sherpa_settings_later_delivery_options_service_AT'
wp option delete 'woocommerce_default_country'
wp option delete 'service_1hr_enabled'
wp option delete 'service_at_enabled'
wp option delete 'service_bulk_rate_enabled'
wp option delete 'flat_rate_enabled'
wp option delete 'my_plugin_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sherpa_settings_%'"
wp option delete 'show_timeslot_checkbox'
wp option delete 'woocommerce_enable_shipping_calc'

# Delete Transients
wp transient delete 'sherpa_order_notice'
wp transient delete 'shipping-transient-version'
wp transient delete 'sherpa_admin_notice'
wp transient delete 'sherpa_admin_notice_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_delivery_time_plain_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_delivery_time_plain_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_delivery_time_plain_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_delivery_time_plain_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'set_params'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'set_params'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'set_params'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'set_params'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'check_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'check_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'check_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'check_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ship_via_sherpa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ship_via_sherpa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ship_via_sherpa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ship_via_sherpa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_delivery_ready_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_delivery_ready_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_delivery_ready_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_delivery_ready_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_delivery_deliver_for'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_delivery_deliver_for'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_delivery_deliver_for'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_delivery_deliver_for'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_delivery_time_plain_text_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_delivery_time_plain_text_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_delivery_time_plain_text_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_delivery_time_plain_text_new'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sherpa_shipping_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sherpa_shipping_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sherpa_shipping_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sherpa_shipping_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_delivery_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_delivery_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_delivery_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_delivery_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_delivery_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_delivery_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_delivery_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_delivery_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_ready_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_ready_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_ready_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_ready_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_company'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_delivery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_delivery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_delivery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_delivery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_order_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_order_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_order_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_order_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sherpa_order_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sherpa_order_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sherpa_order_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sherpa_order_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_sherpa_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_sherpa_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_sherpa_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_sherpa_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipped_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipped_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipped_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipped_by'"
