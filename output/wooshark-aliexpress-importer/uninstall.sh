#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_license_activated'
wp option delete 'my_plugin_reference_id'
wp option delete 'sharkdropship_version'
wp option delete 'sharkdropship_settings'
wp option delete 'isAllowedToImport'
wp option delete 'alibay_daily_update_count'
wp option delete 'alibay_last_update_date'
wp option delete 'alibay_daily_import_count'
wp option delete 'alibay_last_import_date'
wp option delete 'isAllowedToImport_alibay'
wp option delete '_savedConfiguration_alibay'
wp option delete 'alibay_aliexpress_syncRegularPrice'
wp option delete 'alibay_aliexpress_syncSalePrice'
wp option delete 'alibay_aliexpress_syncStock'
wp option delete 'alibay_aliexpress_priceFormulaIntervalls'
wp option delete 'alibay_aliexpress_isShippingCostEnabled'
wp option delete 'alibay_aliexpress_isEnableAutomaticUpdateForAvailability'
wp option delete 'alibay_aliexpress_isUpdateRegularPrice'
wp option delete 'alibay_aliexpress_isUpdateSalePrice'
wp option delete 'alibay_aliexpress_isUpdateStock'
wp option delete 'alibay_aliexpress_onlyPublishProductWillSync'
wp option delete 'alibay_aliexpress_enableAutomaticUpdates'
wp option delete 'alibay_aliexpress_applyPriceFormulaAutomaticUpdate'
wp option delete 'stop_automatic_update_for_ebay'

# Clear Cron Jobs
wp cron event delete 'wooshark_myprefix_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharkdropship_extension_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharkdropship_extension_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharkdropship_extension_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharkdropship_extension_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'productUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'productUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'productUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'productUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'selectedCurrency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'selectedCurrency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'selectedCurrency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'selectedCurrency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lastUpdatedDate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lastUpdatedDate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lastUpdatedDate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lastUpdatedDate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lastUpdated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lastUpdated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lastUpdated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lastUpdated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'isExpired'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'isExpired'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'isExpired'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'isExpired'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
