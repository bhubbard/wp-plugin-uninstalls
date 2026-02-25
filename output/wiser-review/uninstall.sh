#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wiserrw_api_verified'
wp option delete 'wiserrw_api_settings'
wp option delete 'wiserrw_api_data'
wp option delete 'wiserrw_star_rating_enabled'
wp option delete 'wiserrw_wsid'
wp option delete 'wiserrw_automation_id'
wp option delete 'wiserrw_all_products_synced'
wp option delete 'wiserrw__update_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiserrw_star_rating_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiserrw_star_rating_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiserrw_star_rating_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiserrw_star_rating_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiserrw_product_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiserrw_product_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiserrw_product_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiserrw_product_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wiserrw_product_registered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wiserrw_product_registered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wiserrw_product_registered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wiserrw_product_registered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hwp_product_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hwp_product_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hwp_product_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hwp_product_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hwp_var_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wiserrw_watch_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wiserrw_watch_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wiserrw_watch_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wiserrw_watch_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wiserrw_schema_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wiserrw_schema_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wiserrw_schema_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wiserrw_schema_json'"
