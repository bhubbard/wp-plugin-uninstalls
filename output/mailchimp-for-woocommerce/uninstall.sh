#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'mailchimp-woocommerce-store_id'
wp option delete 'woocommerce_onboarding_profile'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_woocommerce_is_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_woocommerce_sms_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_woocommerce_sms_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_woocommerce_sms_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_woocommerce_sms_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_woocommerce_sms_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_woocommerce_sms_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_woocommerce_sms_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_woocommerce_sms_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_subscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_woocommerce_marketing_status_updated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_woocommerce_marketing_status_updated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_woocommerce_marketing_status_updated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_woocommerce_marketing_status_updated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_connect_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_connect_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_connect_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_connect_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_woocommerce_gdpr_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_woocommerce_gdpr_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_woocommerce_gdpr_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_woocommerce_gdpr_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_woocommerce_sms_consent_phone'"
