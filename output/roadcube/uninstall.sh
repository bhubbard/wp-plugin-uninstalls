#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'roadcube_get_countries_log'
wp option delete 'roadcube_country_data'
wp option delete 'roadcube_user_register_init_log'
wp option delete 'roadcube_user_register_log'
wp option delete 'roadcube_get_the_point_log'
wp option delete 'roadcube_user_coupon_claim_log'
wp option delete 'roadcube_sync_faild_status'
wp option delete 'roadcube_trans_create_log'
wp option delete 'roadcube_cancel_trans_create_log'
wp option delete 'roadcube_user_coupons_log'
wp option delete 'roadcube_category_log'
wp option delete 'roadcube_create_product_log'
wp option delete 'roadcube_store_cat_id'
wp option delete 'roadcube_previous_offline_store_transactions'
wp option delete 'roadcube_settings'
wp option delete 'roadcube_product_log'
wp option delete 'roadcube_translations'
wp option delete 'roadcube_user_sync_log'
wp option delete 'roadcube_log'

# Clear Cron Jobs
wp cron event delete 'roadcube_get_trans_to_be_synced_in_ga4'
wp cron event delete 'roadcube_sync_trans_to_ga4'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roadcube_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roadcube_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roadcube_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roadcube_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roadcube_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roadcube_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roadcube_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roadcube_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roadcube_birthday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roadcube_birthday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roadcube_birthday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roadcube_birthday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roadcube_country_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roadcube_country_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roadcube_country_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roadcube_country_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roadcube_claimed_coupons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roadcube_claimed_coupons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roadcube_claimed_coupons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roadcube_claimed_coupons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roadcube_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roadcube_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roadcube_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roadcube_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roadcube_product_created_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roadcube_product_created_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roadcube_product_created_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roadcube_product_created_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rc_loyalty_service_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rc_loyalty_service_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rc_loyalty_service_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rc_loyalty_service_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rc_loyalty_service_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rc_loyalty_service_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rc_loyalty_service_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rc_loyalty_service_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rc_meta_service_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rc_meta_service_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rc_meta_service_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rc_meta_service_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rc_meta_service_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rc_meta_service_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rc_meta_service_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rc_meta_service_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rc_sync_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rc_sync_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rc_sync_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rc_sync_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
