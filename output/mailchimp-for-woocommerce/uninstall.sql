-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_checkout_page_id', 'mailchimp-woocommerce-store_id', 'woocommerce_onboarding_profile');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mailchimp_woocommerce_is_subscribed', 'first_name', 'last_name', 'mailchimp_woocommerce_sms_subscribed', 'mailchimp_woocommerce_sms_phone', 'locale', 'mailchimp_woocommerce_sms_consent_subscribed', 'mailchimp_woocommerce_marketing_status_updated_at', '_wc_shipment_tracking_items', 'wc_connect_labels', 'thumbnail_id', 'mailchimp_woocommerce_gdpr_fields', 'mailchimp_woocommerce_sms_consent_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('mailchimp_woocommerce_is_subscribed', 'first_name', 'last_name', 'mailchimp_woocommerce_sms_subscribed', 'mailchimp_woocommerce_sms_phone', 'locale', 'mailchimp_woocommerce_sms_consent_subscribed', 'mailchimp_woocommerce_marketing_status_updated_at', '_wc_shipment_tracking_items', 'wc_connect_labels', 'thumbnail_id', 'mailchimp_woocommerce_gdpr_fields', 'mailchimp_woocommerce_sms_consent_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('mailchimp_woocommerce_is_subscribed', 'first_name', 'last_name', 'mailchimp_woocommerce_sms_subscribed', 'mailchimp_woocommerce_sms_phone', 'locale', 'mailchimp_woocommerce_sms_consent_subscribed', 'mailchimp_woocommerce_marketing_status_updated_at', '_wc_shipment_tracking_items', 'wc_connect_labels', 'thumbnail_id', 'mailchimp_woocommerce_gdpr_fields', 'mailchimp_woocommerce_sms_consent_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mailchimp_woocommerce_is_subscribed', 'first_name', 'last_name', 'mailchimp_woocommerce_sms_subscribed', 'mailchimp_woocommerce_sms_phone', 'locale', 'mailchimp_woocommerce_sms_consent_subscribed', 'mailchimp_woocommerce_marketing_status_updated_at', '_wc_shipment_tracking_items', 'wc_connect_labels', 'thumbnail_id', 'mailchimp_woocommerce_gdpr_fields', 'mailchimp_woocommerce_sms_consent_phone');

