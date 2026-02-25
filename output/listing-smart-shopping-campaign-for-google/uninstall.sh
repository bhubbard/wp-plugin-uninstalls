#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ced_google_user_login_data'
wp option delete 'ced_google_user_token_data'
wp option delete 'is_user_created'
wp option delete 'time_during_create_google_token'
wp option delete 'is_user_logged_in'
wp option delete 'ced_google_account_data'
wp option delete 'ced_google_nav_step'
wp option delete 'ced_google_another_account_data'
wp option delete 'ced_google_GMC_account_data'
wp option delete 'ced_google_ads_account_data'
wp option delete 'ced_save_merchant_details'
wp option delete 'ced_save_ads_details'
wp option delete 'ced_configuration_details'
wp option delete 'ced_compaign_details'
wp option delete 'ced_google_connected_gmail'
wp option delete 'ced_google_connected_ads_gmail'
wp option delete 'connected_google_ads_id'
wp option delete 'ced_google_shopping_list_per_page'
wp option delete 'ced_google_shopping_product_id_view'
wp option delete 'ced_google_shopping_profiles'
wp option delete 'ced_google_shopping_auto_product_syncing'
wp option delete 'ced_google_shopping_auto_existing_product_syncing'
wp option delete 'ced_google_shopping_auto_instant_product_syncing'
wp option delete 'ced_google_shopping_product_automate_setting_data'
wp option delete 'ced_google_shopping_chunk_products'
wp option delete 'ced_google_shopping_existing_chunk_products'
wp option delete 'ced_google_shopping_cnvrsn_global_site_tags'
wp option delete 'ced_google_shopping_claim_and_verify_token'
wp option delete 'ced_google_shopping_mapped_categories'
wp option delete 'ced_google_shopping_update_meta_chunk_product'
wp option delete 'CedUmbProfileSelectedMetaKeys'
wp option delete 'google_shopping_mapped_cat'
wp option delete 'ced_google_shopping_configuration_details'

# Delete Transients
wp transient delete 'time_during_create_google_token'
wp transient delete 'ced_google_token_fetched'

# Clear Cron Jobs
wp cron event delete 'ced_google_shopping_auto_product_syncing'
wp cron event delete 'ced_google_shopping_auto_existing_product_syncing'
wp cron event delete 'ced_google_shopping_auto_instant_product_syncing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_product_updated_on_google_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_product_updated_on_google_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_product_updated_on_google_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_product_updated_on_google_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
