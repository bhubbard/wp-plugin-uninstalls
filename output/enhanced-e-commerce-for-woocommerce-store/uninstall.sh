#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conv_active_domain'
wp option delete 'ee_options'
wp option delete 'ee_prod_mapped_cats'
wp option delete 'ee_prod_mapped_attrs'
wp option delete 'ee_auto_update_id'
wp option delete 'ee_api_data'
wp option delete 'ee_additional_data'
wp option delete 'conv_selected_events'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_default_country'
wp option delete 'ee_msg_nofifications'
wp option delete 'conv_localhost_error'
wp option delete 'ee_remarketing_snippets'
wp option delete 'ee_customer_gmail'
wp option delete 'ee_customer_msmail'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_postcode'
wp option delete 'ee_customer_fbmail'
wp option delete 'ee_customer_gtm_gmail'
wp option delete 'ee_conv_plugin_version'
wp option delete 'conv_ut_cleanup'
wp option delete 'ee_ut'
wp option delete 'ee_convnotice'
wp option delete 'microsoft_ads_conversions_tracking'
wp option delete 'ee_prod_response'
wp option delete 'woocommerce_weight_unit'
wp option delete 'ee_conv_total_synced_product_count'
wp option delete 'ads_tracking_id'
wp option delete 'conv_gads_currency'
wp option delete 'google_ads_conversion_tracking'
wp option delete 'ee_conversio_send_to'
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp transient delete '_conversios_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'tvc_add_cron_interval_for_product_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracked'"
