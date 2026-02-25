#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fr_access_token_expiry'
wp option delete 'fr_access_token'
wp option delete 'fr_refresh_token'
wp option delete 'fr_oauth_err_count'
wp option delete 'fr_error'
wp option delete 'fr_company_id'
wp option delete 'fr_use_sso'
wp option delete 'fr_logging'
wp option delete 'fr_multipass_secret'
wp option delete 'fr_extend_emails'
wp option delete 'fr_show_previews'
wp option delete 'fr_domain'
wp option delete 'fr_use_legacy'
wp option delete 'flickrocket_theme_id'
wp option delete 'fr_mycontentjs_options'
wp option delete 'fr_credit_orders_directly'
wp option delete 'fr_error_mail'
wp option delete 'fr_sync_products'
wp option delete 'fr_activate_products'
wp option delete 'woocommerce_currency'
wp option delete 'fr_error_email'
wp option delete 'fr_last_version'
wp option delete 'fr_mautic_id'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'flickrocket_user_email'
wp option delete 'flickrocket_user_password'
wp option delete 'flickrocket_sync_secret'
wp option delete 'fr_show_preview'

# Clear Cron Jobs
wp cron event delete 'flickrocket_sync_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flickrocket_project_key_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flickrocket_project_key_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flickrocket_project_key_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flickrocket_project_key_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_license_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_license_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_license_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_license_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variations_license_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variations_license_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variations_license_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variations_license_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fr_one_time_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fr_one_time_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fr_one_time_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fr_one_time_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flickrocket_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flickrocket_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flickrocket_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flickrocket_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flickrocket_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flickrocket_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flickrocket_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flickrocket_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flickrocket_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flickrocket_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flickrocket_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flickrocket_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flickrocket_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flickrocket_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flickrocket_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flickrocket_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fr_mirrored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fr_mirrored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fr_mirrored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fr_mirrored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fr_price_sync_ok'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fr_price_sync_ok'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fr_price_sync_ok'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fr_price_sync_ok'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_variation_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_variation_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_variation_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_variation_quality'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_num_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_num_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_num_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_num_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flickrocket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flickrocket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flickrocket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flickrocket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fr_user_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fr_user_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fr_user_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fr_user_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_license'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_license'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_license'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_license'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
