-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('codshield_store_id', 'codshield_registered_site_url', 'codshield_license_key', 'codshield_registered_email', 'twilio_sid', 'twilio_token', 'twilio_whatsapp_number', ' codshield_registered_site_url', 'codshield_store_count', 'codshield_license_token', 'codshield_license_status', 'codshield_license_usage_count', 'codshield_plan_code', 'codshield_admin_user_id', 'codshield_admin_user_name', 'codshield_admin_user_email', 'codshield_fraud_usage_count', 'codshield_confirmation_usage_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_ip_address', '_codshield_custom_api_last');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_ip_address', '_codshield_custom_api_last');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_ip_address', '_codshield_custom_api_last');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_ip_address', '_codshield_custom_api_last');

