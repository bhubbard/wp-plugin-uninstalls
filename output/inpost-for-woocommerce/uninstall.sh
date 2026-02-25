#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_footer_text'
wp option delete 'easypack_debug_mode'
wp option delete 'easypack_api_environment'
wp option delete 'inpost_pl_organisation_services'
wp option delete 'inpost_pl_last_time_update_services'
wp option delete 'easypack_debug_mode_enqueue_scripts'
wp option delete 'easypack_js_map_button'
wp option delete 'easypack_geowidget_sandbox_token'
wp option delete 'easypack_geowidget_production_token'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'easypack_courier_tmplts_dmtemplates'
wp option delete 'easypack_organization_id'
wp option delete 'easypack_token'
wp option delete 'inpost_pl_api_returned_error'
wp option delete 'easypack_create_shipment_automatically'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'easypack_enable_webhooks'
wp option delete 'easypack_add_order_note'
wp option delete 'easypack_cache_machines'
wp option delete 'easypack_cache_machines_options'
wp option delete 'easypack_cache_machines_cod_options'
wp option delete 'easypack_cache_machines_time'
wp option delete 'easypack_api_login_error'
wp option delete 'easypack_label_format'
wp option delete 'easypack_returns_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rates'"
wp option delete 'active_sitewide_plugins'
wp option delete 'easypack_custom_button_css'
wp option delete 'easypack_courier_tmplts_dmtemplate_selected'
wp option delete 'easypack_set_order_completed'
wp option delete 'easypack_default_package_size'
wp option delete 'easypack_insurance_amount_mode'
wp option delete 'easypack_insurance_amount_default'
wp option delete 'easypack_default_send_method'
wp option delete 'easypack_default_package_size_c2c'
wp option delete 'easypack_set_default_courier_dimensions'
wp option delete 'easypack_default_courier_dimensions'
wp option delete 'easypack_change_order_status_by_webhook'
wp option delete 'easypack_delivery_notice'
wp option delete 'easypack_enable_for_all_esmartmix'
wp option delete 'easypack_enable_for_all_products'
wp option delete 'easypack_set_major_method'
wp option delete 'easypack_over_weight'
wp option delete 'easypack_api_error_login'
wp option delete 'easypack_sender_first_name'
wp option delete 'easypack_sender_last_name'
wp option delete 'easypack_sender_company_name'
wp option delete 'easypack_sender_phone'
wp option delete 'easypack_sender_email'
wp option delete 'easypack_default_machine_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dpoint_selected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dmtemplates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dmtemplate_selected'"
wp option delete 'easypack_button_output'
wp option delete 'easypack_fast_return'
wp option delete 'easypack_dispatch_orders'
wp option delete 'inpost_pl_organisation_services_global'
wp option delete 'easypack_sender_city'
wp option delete 'easypack_sender_street'
wp option delete 'easypack_sender_building_no'
wp option delete 'easypack_sender_post_code'

# Clear Cron Jobs
wp cron event delete 'send_shipment_automatically'
wp cron event delete 'send_tracking_numbers_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fs_easypack_method_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fs_easypack_method_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fs_easypack_method_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fs_easypack_method_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcel_machine_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_parcel_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_inpost_coupon_shipping_methods_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_inpost_coupon_shipping_methods_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_inpost_coupon_shipping_methods_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_inpost_coupon_shipping_methods_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woo_inpost_parcel_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woo_inpost_parcel_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woo_inpost_parcel_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woo_inpost_parcel_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_additional_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_additional_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_additional_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_additional_packages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_parcel_dimensions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_reference_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_reference_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_reference_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_reference_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easypack_parcels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dispath_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dispath_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dispath_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dispath_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipx_shipment_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipx_shipment_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipx_shipment_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipx_shipment_object'"
