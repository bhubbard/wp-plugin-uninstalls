#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'codshield_store_id'
wp option delete 'codshield_registered_site_url'
wp option delete 'codshield_license_key'
wp option delete 'codshield_registered_email'
wp option delete 'twilio_sid'
wp option delete 'twilio_token'
wp option delete 'twilio_whatsapp_number'
wp option delete ' codshield_registered_site_url'
wp option delete 'codshield_store_count'
wp option delete 'codshield_license_token'
wp option delete 'codshield_license_status'
wp option delete 'codshield_license_usage_count'
wp option delete 'codshield_plan_code'
wp option delete 'codshield_admin_user_id'
wp option delete 'codshield_admin_user_name'
wp option delete 'codshield_admin_user_email'
wp option delete 'codshield_fraud_usage_count'
wp option delete 'codshield_confirmation_usage_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_codshield_custom_api_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_codshield_custom_api_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_codshield_custom_api_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_codshield_custom_api_last'"
