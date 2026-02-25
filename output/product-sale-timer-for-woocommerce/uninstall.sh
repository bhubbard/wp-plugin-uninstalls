#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcc_pst_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcc_pst_sale_price_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcc_pst_sale_price_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcc_pst_sale_price_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcc_pst_sale_price_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcc_pst_sale_price_end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcc_pst_sale_price_end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcc_pst_sale_price_end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcc_pst_sale_price_end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcc_pst_sale_start_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcc_pst_sale_end_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
