#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddfwm_vendors_page'
wp option delete 'ddfwm_branding_logo'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'lddfw_driver_assigned_status'
wp option delete 'lddfw_out_for_delivery_status'
wp option delete 'lddfw_failed_attempt_status'
wp option delete 'lddfw_delivered_status'
wp option delete 'ddfwm_google_api_key'
wp option delete 'ddfwm_dispatch_phone_number'
wp option delete 'ddfwm_failed_attempt_status'
wp option delete 'ddfwm_delivered_status'
wp option delete 'lddfw_processing_status'
wp option delete 'ddfwm_vendor_assigned_status'
wp option delete 'ddfwm_out_for_delivery_status'
wp option delete 'lddfw_dispatch_phone_number'
wp option delete 'woocommerce_version'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddfwm_vendor_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddfwm_vendor_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddfwm_vendor_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddfwm_vendor_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_driver_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_driver_claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_driver_claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_driver_claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_driver_claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_driver_availability'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddfwm_vendor_drivers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddfwm_vendor_drivers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddfwm_vendor_drivers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddfwm_vendor_drivers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddfwm_vendor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddfwm_vendor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddfwm_vendor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddfwm_vendor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddfwm_driver_commission_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddfwm_driver_commission_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddfwm_driver_commission_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddfwm_driver_commission_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddfwm_driver_commission_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddfwm_driver_commission_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddfwm_driver_commission_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddfwm_driver_commission_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lddfw_driver_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lddfw_driver_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lddfw_driver_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lddfw_driver_image'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_page_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vendor_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ddfwm_vendor_availability'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ddfwm_vendor_availability'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ddfwm_vendor_availability'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ddfwm_vendor_availability'"
