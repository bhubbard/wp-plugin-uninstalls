#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ip2oz_keeplogs'
wp option delete 'ip2oz_disable_notices'
wp option delete 'ip2oz_group_content'
wp option delete 'ip2oz_settings_arr'
wp option delete 'ip2oz_version'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_keeplogs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%'"

# Clear Cron Jobs
wp cron event delete 'ip2oz_cron_sborki'
wp cron event delete 'ip2oz_cron_period'
wp cron event delete 'cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip2oz_ozon_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip2oz_ozon_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip2oz_ozon_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip2oz_ozon_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usbs_barcode_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usbs_barcode_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usbs_barcode_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usbs_barcode_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_tn_ved_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_tn_ved_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_tn_ved_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_tn_ved_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip2oz_ozon_attribute_name_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip2oz_ozon_attribute_name_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip2oz_ozon_attribute_name_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip2oz_ozon_attribute_name_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip2oz_ozon_attribute_value_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip2oz_ozon_attribute_value_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip2oz_ozon_attribute_value_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip2oz_ozon_attribute_value_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_vat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_prod_id_on_ozon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_prod_id_on_ozon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_prod_id_on_ozon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_prod_id_on_ozon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_prod_archive_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_prod_archive_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_prod_archive_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_prod_archive_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ip2oz_task_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ip2oz_task_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ip2oz_task_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ip2oz_task_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
