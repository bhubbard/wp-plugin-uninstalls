#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc_mp_settings'
wp option delete 'wpcargo_option_settings'
wp option delete 'wpcargo_restrict_duplicate'
wp option delete 'wpcargo_page_settings'
wp option delete 'wpcargo_label_header'
wp option delete 'wpcargo_user_timezone'
wp option delete 'wpcargo_title_numdigit'
wp option delete 'wpcargo_title_suffix'
wp option delete 'wpcargo_tax'
wp option delete 'wpcargo_print_ffamily'
wp option delete 'wpcargo_print_fsize'
wp option delete 'wpcargo_print_barcode_height'
wp option delete 'wpcargo_print_barcode_width'
wp option delete 'shmap_active'
wp option delete 'wpcargo_admin_mail_active'
wp option delete 'wpcargo_admin_mail_domain'
wp option delete 'wpcargo_admin_mail_to'
wp option delete 'wpcargo_admin_mail_subject'
wp option delete 'wpcargo_admin_mail_body'
wp option delete 'wpcargo_admin_mail_footer'
wp option delete 'wpcargo_mail_settings'
wp option delete 'wpcargo_email_page_settings'
wp option delete 'wpcargo_mail_admin'
wp option delete 'wpcargo_mail_domain'
wp option delete 'wpcargo_mail_status'
wp option delete 'wpcargo_email_cc'
wp option delete 'wpcargo_email_bcc'
wp option delete 'wpcargo_admin_mail_status'
wp option delete 'multiselect_settings'
wp option delete 'shmap_api'
wp option delete 'shmap_type'
wp option delete 'shmap_zoom'
wp option delete 'shmap_result'
wp option delete 'shmap_label_color'
wp option delete 'shmap_label_size'
wp option delete 'shmap_marker'
wp option delete 'shmap_country_restrict'
wp option delete 'shmap_longitude'
wp option delete 'shmap_latitude'
wp option delete 'shmap_origin_marker'
wp option delete 'wpc_disable_registered_shipper_search'
wp option delete 'wpc_disable_registered_receiver_search'
wp option delete 'woointeg_dim_divisor'
wp option delete 'woointeg_dim_divisor_inc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_user_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_user_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_user_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_user_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_reg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_reg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_reg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_reg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gst_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gst_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gst_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gst_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'min_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'min_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'min_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'min_notification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'company_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'company_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'company_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'company_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'registered_shipper'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'registered_shipper'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'registered_shipper'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'registered_shipper'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_shipments_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_shipments_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_shipments_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_shipments_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remarks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remarks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remarks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remarks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_expected_delivery_date_picker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_expected_delivery_date_picker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_expected_delivery_date_picker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_expected_delivery_date_picker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_pickup_date_picker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_pickup_date_picker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_pickup_date_picker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_pickup_date_picker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_employee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_employee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_employee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_employee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__shipment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__shipment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__shipment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__shipment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc-multiple-package'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc-multiple-package'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc-multiple-package'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc-multiple-package'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_shipper_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_shipper_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_shipper_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_shipper_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_shipper_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_shipper_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_shipper_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_shipper_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_shipper_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_shipper_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_shipper_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_shipper_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_shipper_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_shipper_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_shipper_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_shipper_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_receiver_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_receiver_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_receiver_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_receiver_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_receiver_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_receiver_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_receiver_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_receiver_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_receiver_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_receiver_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_receiver_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_receiver_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_receiver_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_receiver_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_receiver_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_receiver_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_type_of_shipment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_type_of_shipment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_type_of_shipment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_type_of_shipment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_courier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_courier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_courier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_courier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_packages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_packages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_packages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_packages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_mode_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_mode_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_mode_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_mode_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_qty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_qty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_qty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_qty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_wpcargo_mode_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_wpcargo_mode_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_wpcargo_mode_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_wpcargo_mode_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_total_freight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_total_freight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_total_freight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_total_freight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_carrier_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_carrier_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_carrier_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_carrier_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_carrier_ref_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_carrier_ref_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_carrier_ref_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_carrier_ref_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_departure_time_picker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_departure_time_picker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_departure_time_picker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_departure_time_picker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_origin_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_origin_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_origin_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_origin_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_destination'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_destination'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_destination'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_destination'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_pickup_time_picker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_pickup_time_picker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_pickup_time_picker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_pickup_time_picker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcargo_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcargo_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcargo_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcargo_comments'"
