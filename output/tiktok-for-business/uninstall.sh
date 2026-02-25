#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tt4b_version'
wp option delete 'tt4b_last_product_sync_time'
wp option delete 'tt4b_external_business_id'
wp option delete 'tt4b_external_data'
wp option delete 'tt4b_app_id'
wp option delete 'tt4b_secret'
wp option delete 'tt4b_access_token'
wp option delete 'tt4b_external_data_key'
wp option delete 'tt4b_user_country'
wp option delete 'tt4b_eligibility_page_total'
wp option delete 'tt4b_mapi_total_gmv'
wp option delete 'tt4b_mapi_total_orders'
wp option delete 'tt4b_mapi_tenure'
wp option delete 'tt4b_should_send_s2s_events'
wp option delete 'tt4b_product_delete_queue'
wp option delete 'tt4b_product_restore_queue'
wp option delete 'tt4b_full_catalog_sync'
wp option delete 'tt4b_last_full_sync_time'
wp option delete 'tt4b_advertiser_id'
wp option delete 'tt4b_bc_id'
wp option delete 'tt4b_pixel_code'
wp option delete 'tt4b_catalog_id'
wp option delete 'tt4b_advanced_matching'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_phone'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
