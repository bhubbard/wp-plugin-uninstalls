#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syf_db_version'
wp option delete 'woocommerce_synchrony-unifi-payments_settings'
wp option delete 'woocommerce_synchrony-fortiva-payments_settings'
wp option delete 'synchrony_deployed_authentication_api_endpoint'
wp option delete 'synchrony_test_authentication_api_endpoint'
wp option delete 'synchrony_deployed_token_api_endpoint'
wp option delete 'synchrony_test_token_api_endpoint'
wp option delete 'synchrony_deployed_unifi_script_endpoint'
wp option delete 'synchrony_test_unifi_script_endpoint'
wp option delete 'synchrony_deployed_transactapi_api_endpoint'
wp option delete 'synchrony_test_transactapi_api_endpoint'
wp option delete 'synchrony_logger_api_endpoint'
wp option delete 'synchrony_test_logger_api_endpoint'
wp option delete 'synchrony_deployed_moduletracking_api_endpoint'
wp option delete 'synchrony_test_moduletracking_api_endpoint'
wp option delete 'synchrony_deployed_findstatus_api_endpoint'
wp option delete 'synchrony_test_findstatus_api_endpoint'
wp option delete 'synchrony_deployed_promo_tag_endpoint'
wp option delete 'synchrony_test_promo_tag_endpoint'
wp option delete 'synchrony_deployed_promo_tag_determination_endpoint'
wp option delete 'synchrony_test_promo_tag_determination_endpoint'
wp option delete 'synchrony_deployed_banner_mpp_endpoint'
wp option delete 'synchrony_test_banner_mpp_endpoint'
wp option delete 'synchrony_deployed_partner_activate_api_endpoint'
wp option delete 'synchrony_test_partner_activate_api_endpoint'
wp option delete 'synchrony_deployed_smb_domain_api_endpoint'
wp option delete 'synchrony_test_smb_domain_api_endpoint'
wp option delete 'synchrony_deployed_client_id_rotation_api_endpoint'
wp option delete 'synchrony_test_client_id_rotation_api_endpoint'
wp option delete 'syf_sync_page'

# Delete Transients
wp transient delete 'synchrony_admin_notice'
wp transient delete 'syf_admin_order_failed'
wp transient delete 'syf_admin_order_failed_msg'
wp transient delete 'syf_admin_order_success'
wp transient delete 'syf_payment_failed'
wp transient delete 'synchrony_smb_access_token'
wp transient delete 'synchrony_access_token'
wp transient delete 'synchrony_whitelist_domain'
wp transient delete 'promo_tags_attributes'
wp transient delete 'rules_set_attributes'
wp transient delete 'exclude_attributes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syf_order_legacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syf_order_legacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syf_order_legacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syf_order_legacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_syf_order_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_syf_order_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_syf_order_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_syf_order_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syf_paymenttoken'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syf_paymenttoken'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syf_paymenttoken'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syf_paymenttoken'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syf_cardonfileflag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syf_cardonfileflag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syf_cardonfileflag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syf_cardonfileflag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
