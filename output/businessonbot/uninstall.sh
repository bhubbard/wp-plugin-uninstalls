#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'businessonbot_db_version'
wp option delete 'businessonbot_api_script'
wp option delete 'businessonbot_abandoned_product_timeout'
wp option delete 'businessonbot_abandoned_cart_timeout'
wp option delete 'businessonbot_security_key'
wp option delete 'businessonbot_plugin_track_guest_cart_from_cart_page'
wp option delete 'businessonbot_enable_gdpr_consent'
wp option delete 'businessonbot_guest_cart_capture_msg'
wp option delete 'businessonbot_gdpr_allow_opt_out'
wp option delete 'businessonbot_gdpr_opt_out_message'
wp option delete 'businessonbot_plugin_cart_abandoned_time'
wp option delete 'woocommerce_force_ssl_checkout'

# Delete Transients
wp transient delete 'businessonbot_abandoned_id'
wp transient delete 'businessonbot_sent_id'
wp transient delete 'businessonbot_user_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'businessonbot_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'businessonbot_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'businessonbot_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'businessonbot_gdpr_tracking_choice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_businessonbot_modified_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_businessonbot_modified_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_businessonbot_modified_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_businessonbot_modified_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woocommerce_persistent_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_zipcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_businessonbot_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_businessonbot_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_businessonbot_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_businessonbot_coupon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocommerce_persistent_cart_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_businessonbot_modified_cart%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_businessonbot_modified_cart%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_businessonbot_modified_cart%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_businessonbot_modified_cart%'"
