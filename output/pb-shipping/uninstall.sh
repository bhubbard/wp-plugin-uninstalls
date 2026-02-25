#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pb_developer_id'
wp option delete 'pb_merchant_id'
wp option delete 'pb_production_key'
wp option delete 'pb_production_secret'
wp option delete 'pb_sandbox_developer_id'
wp option delete 'pb_sandbox_merchant_id'
wp option delete 'pb_sandbox_key'
wp option delete 'pb_sandbox_secret'
wp option delete 'pb_client_id'
wp option delete 'pb_client_facility_id'
wp option delete 'pb_carrier_facility_id'
wp option delete 'pb_client_facility_name'
wp option delete 'pb_client_facility_type'
wp option delete 'pb_client_facility_active'
wp option delete 'pb_client_facility_address'
wp option delete 'pb_client_facility_address2'
wp option delete 'pb_client_facility_city'
wp option delete 'pb_client_facility_state'
wp option delete 'pb_client_facility_zip'
wp option delete 'pb_client_facility_induction_zip'
wp option delete 'pb_client_facility_country'
wp option delete 'pb_client_facility_tel'
wp option delete 'pb_client_facility_email'
wp option delete 'pb_enabled_carriers'
wp option delete 'pb_carrier_fedex'
wp option delete 'pb_carrier_fedex_ver'
wp option delete 'pb_carrier_ups'
wp option delete 'pb_carrier_ups_ver'
wp option delete 'pb_carrier_fedex_sandbox_id'
wp option delete 'pb_carrier_fedex_prod_id'
wp option delete 'pb_carrier_ups_sandbox_id'
wp option delete 'pb_carrier_ups_prod_id'
wp option delete 'pb_white_label'
wp option delete 'pb_white_label_url'
wp option delete 'pb_slip_note'
wp option delete 'pb_restrict'
wp option delete 'pb_uninstall'
wp option delete 'pb_admin_emails'
wp option delete 'pb_admin_exc_updates'
wp option delete 'pb_admin_rtn_updates'
wp option delete 'pb_email_updates'
wp option delete 'pb_email_exc_updates'
wp option delete 'pb_email_rtn_updates'
wp option delete 'pb_sms_updates'
wp option delete 'pb_sms_exc_updates'
wp option delete 'pb_sms_rtn_updates'
wp option delete 'pb_fetch_freq'
wp option delete 'pb_mb_phone'
wp option delete 'pb_mb_dev_key'
wp option delete 'pb_mb_prod_key'
wp option delete 'pb_cart_quote'
wp option delete 'pb_origin_facility'
wp option delete 'pb_wc_method'
wp option delete 'pb_db_version'
wp option delete 'pb_cart_rate_troubleshoot'
wp option delete 'pb_single_rate_troubleshoot'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'pb_refresh'
wp option delete 'woocommerce_customer_completed_order_settings'
wp option delete 'pb_custom_tracking_url'
wp option delete 'wse_dt_format'
wp option delete 'fetch_delivery_status_last_type'
wp option delete 'email_group_count'
wp option delete 'last_email_sent'
wp option delete 'email_group_date'
wp option delete 'email_msg_date'
wp option delete 'sms_group_response'
wp option delete 'sms_group_count'
wp option delete 'sms_group_date'
wp option delete 'sms_msg_date'
wp option delete 'last_sms'

# Delete Transients
wp transient delete 'fetch_delivery_status'
wp transient delete 'custom_email_plugin'
wp transient delete 'last_sms_tel'
wp transient delete 'pb_usps_deleted_manifest'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_method_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_shipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_shipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_shipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_shipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date_completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_completed_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pb_queue_reship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pb_queue_reship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pb_queue_reship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pb_queue_reship'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_est'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_est_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_tracking_uploaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_tracking_uploaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_tracking_uploaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_tracking_uploaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost'"
