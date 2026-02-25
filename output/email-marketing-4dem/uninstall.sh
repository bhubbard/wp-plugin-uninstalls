#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sincronizza_utenti'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp option delete 'adv_dem'
wp option delete 'adv_dem_secret_key'
wp option delete 'adv_demsincronizza_utenti'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv_dem_consoleId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv_dem_consoleId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv_dem_consoleId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv_dem_consoleId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv_dem_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv_dem_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv_dem_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv_dem_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv_dem_primary_category_mid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv_dem_primary_category_mid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv_dem_primary_category_mid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv_dem_primary_category_mid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv_dem_primary_category_top'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv_dem_primary_category_top'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv_dem_primary_category_top'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv_dem_primary_category_top'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_pa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adv_wc_opt_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adv_wc_opt_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adv_wc_opt_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adv_wc_opt_in'"
