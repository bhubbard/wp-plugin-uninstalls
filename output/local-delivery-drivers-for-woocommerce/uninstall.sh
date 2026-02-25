#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lddfw_out_for_delivery_status'
wp option delete 'lddfw_driver_assigned_status'
wp option delete 'lddfw_failed_attempt_status'
wp option delete 'lddfw_delivered_status'
wp option delete 'lddfw_processing_status'
wp option delete 'lddfw_google_api_key'
wp option delete 'lddfw_google_api_key_server'
wp option delete 'lddfw_dispatch_phone_number'
wp option delete 'lddfw_status_section'
wp option delete 'lddfw_delivery_drivers_page'
wp option delete 'lddfw_failed_delivery_reason_1'
wp option delete 'lddfw_sms_api_auth_token'
wp option delete 'lddfw_whatsapp_api_auth_token'
wp option delete 'lddfw_branding_logo'
wp option delete 'lddfw_tracking_page'
wp option delete 'lddfw_store_address_longitude'
wp option delete 'lddfw_store_address_latitude'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'lddfw_sync_table'
wp option delete 'lddfw_sms_assign_to_driver_template'
wp option delete 'lddfw_sms_out_for_delivery_template'
wp option delete 'lddfw_sms_start_delivery_template'
wp option delete 'lddfw_sms_delivered_template'
wp option delete 'lddfw_sms_not_delivered_template'
wp option delete 'lddfw_whatsapp_assign_to_driver_template'
wp option delete 'lddfw_whatsapp_out_for_delivery_template'
wp option delete 'lddfw_whatsapp_start_delivery_template'
wp option delete 'lddfw_whatsapp_delivered_template'
wp option delete 'lddfw_whatsapp_not_delivered_template'
wp option delete 'lddfw_failed_delivery_reason_2'
wp option delete 'lddfw_failed_delivery_reason_3'
wp option delete 'lddfw_failed_delivery_reason_4'
wp option delete 'lddfw_failed_delivery_reason_5'
wp option delete 'lddfw_delivery_dropoff_1'
wp option delete 'lddfw_delivery_dropoff_2'
wp option delete 'lddfw_delivery_dropoff_3'
wp option delete 'lddfw_driver_prices_permission'
wp option delete 'lddfw_driver_billing_permission'
wp option delete 'lddfw_driver_customer_whatsapp_permission'
wp option delete 'lddfw_driver_customer_permission'
wp option delete 'woocommerce_version'
wp option delete 'lddfw_proof_of_delivery_one_mandatory'
wp option delete 'lddfw_proof_of_delivery_signature'
wp option delete 'lddfw_proof_of_delivery_photo'
wp option delete 'lddfw_driver_products_permission'
wp option delete 'woocommerce_weight_unit'
wp option delete 'lddfw_driver_commission_permission'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'lddfw_proof_of_delivery_max_images'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_assigned_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_assigned_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_assigned_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_assigned_date'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_driver_claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_driver_claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_driver_claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_driver_claim'"
