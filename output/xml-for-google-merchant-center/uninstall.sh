#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xfgmc_plugin_notifications'
wp option delete 'xfgmc_settings_arr'
wp option delete 'xfgmc_last_feed_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xfgmc_last_element_feed_%'"
wp option delete 'xfgmc_keeplogs'
wp option delete 'xfgmc_version'
wp option delete 'xfgmc_feed_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'xfgmc_settings_arr_backup'
wp option delete 'xfgmc_registered_feeds_arr'
wp option delete 'xfgmcp_order_id'
wp option delete 'xfgmcp_order_email'

# Clear Cron Jobs
wp cron event delete 'xfgmc_cron_start_feed_creation'
wp cron event delete 'xfgmc_cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfgmc_google_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfgmc_google_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfgmc_google_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfgmc_google_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfgmc_tax_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfgmc_tax_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfgmc_tax_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfgmc_tax_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfgmc_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfgmc_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfgmc_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfgmc_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfgmc_size_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfgmc_size_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfgmc_size_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfgmc_size_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfgmc_size_type_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfgmc_size_type_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfgmc_size_type_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfgmc_size_type_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xfgmc_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xfgmc_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xfgmc_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xfgmc_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xfgmc_fb_product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xfgmc_identifier_exists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xfgmc_identifier_exists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xfgmc_identifier_exists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xfgmc_identifier_exists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ts_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usbs_gtin_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usbs_gtin_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usbs_gtin_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usbs_gtin_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_xfgmc_tax_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_xfgmc_tax_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_xfgmc_tax_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_xfgmc_tax_category'"
