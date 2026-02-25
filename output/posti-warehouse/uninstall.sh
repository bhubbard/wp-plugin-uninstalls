#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'posti_wh_api_auth'
wp option delete 'posti_wh_api_warehouses'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_postcode'
wp option delete 'posti_warehouse_db_version'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'posti_wh_options'
wp option delete 'woocommerce_posti_warehouse_settings'

# Delete Transients
wp transient delete 'posti_warehouse_shipping_methods'

# Clear Cron Jobs
wp cron event delete 'posti_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_wh_warehouse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_wh_warehouse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_wh_warehouse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_wh_warehouse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_customer_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_wh_warehouse_single'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_wh_warehouse_single'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_wh_warehouse_single'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_wh_warehouse_single'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_wh_distribution'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_wh_distribution'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_wh_distribution'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_wh_distribution'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wholesale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wholesale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wholesale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wholesale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_fragile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_fragile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_fragile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_fragile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_lq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_lq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_lq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_lq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_large'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_large'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_large'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_large'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_wh_country_of_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_wh_country_of_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_wh_country_of_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_wh_country_of_origin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_posti_wh_hs_tariff_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_posti_wh_hs_tariff_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_posti_wh_hs_tariff_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_posti_wh_hs_tariff_number'"
