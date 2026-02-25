#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inpost_italy_do_activation_redirect'
wp option delete 'easypack_organization_id_italy'
wp option delete 'easypack_token_italy'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'easypack_italy_api_environment'
wp option delete 'inpost_italy_organisation'
wp option delete 'inpost_italy_api_limit_connection'
wp option delete 'easypack_italy_custom_button_css'
wp option delete 'easypack_italy_custom_css'
wp option delete 'easypack_italy_map_debug'
wp option delete 'easypack_italy_cart_limit'
wp option delete 'inpost_italy_api_login_error'
wp option delete 'easypack_italy_label_format'
wp option delete 'easypack_returns_page'
wp option delete 'easypack_italy_over_weight'
wp option delete 'easypack_api_error_login'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rates'"
wp option delete 'easypack_italy_default_package_size'
wp option delete 'easypack_italy_send_tracking'
wp option delete 'easypack_default_machine_id'
wp option delete 'easypack_italy_default_send_method'
wp option delete 'easypack_fast_return'
wp option delete 'easypack_italy_flow_type'
wp option delete 'easypack_italy_sender_company_name'
wp option delete 'easypack_italy_sender_email'
wp option delete 'easypack_italy_sender_phone'
wp option delete 'easypack_italy_sender_city'
wp option delete 'easypack_italy_sender_post_code'
wp option delete 'easypack_italy_sender_street'
wp option delete 'easypack_italy_sender_building_no'
wp option delete 'easypack_italy_pickup_city'
wp option delete 'easypack_italy_pickup_post_code'
wp option delete 'easypack_italy_pickup_street'
wp option delete 'easypack_italy_pickup_building_no'
wp option delete 'easypack_insurance_amount_default'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dpoint'"
wp option delete 'inpost_italy_organisation_global'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipx_shipment_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipx_shipment_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipx_shipment_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipx_shipment_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcel_machine_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcel_machine_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcel_machine_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcel_machine_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inpost_italy_shipping_methods_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inpost_italy_shipping_methods_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inpost_italy_shipping_methods_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inpost_italy_shipping_methods_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inpost_italy_parcel_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inpost_italy_parcel_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inpost_italy_parcel_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inpost_italy_parcel_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_reference_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_reference_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_reference_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_reference_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_parcel_create_args'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_parcel_create_args'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_parcel_create_args'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_parcel_create_args'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_inpost_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_inpost_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_inpost_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_inpost_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dispath_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dispath_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dispath_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dispath_order'"
