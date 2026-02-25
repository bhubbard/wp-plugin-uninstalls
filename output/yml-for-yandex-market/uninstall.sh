#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'y4ym_plugin_notifications'
wp option delete 'y4ym_settings_arr'
wp option delete 'y4ym_last_feed_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'y4ym_last_element_feed_%'"
wp option delete 'y4ym_keeplogs'
wp option delete 'y4ym_version'
wp option delete 'y4ym_feed_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isc%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_hook_isd%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'yfym_settings_arr'
wp option delete 'yfym_registered_feeds_arr'
wp option delete 'p_arr'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'y4ymp_constructor_params%'"
wp option delete 'yfymp_order_id'
wp option delete 'yfymp_order_email'
wp option delete 'y4ymp_order_id'
wp option delete 'y4ymp_order_email'

# Clear Cron Jobs
wp cron event delete 'y4ym_cron_start_feed_creation'
wp cron event delete 'y4ym_cron_sborki'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yfym_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yfym_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yfym_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yfym_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yfym_collection_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yfym_collection_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yfym_collection_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yfym_collection_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yfym_collection_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yfym_collection_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yfym_collection_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yfym_collection_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yfym_collection_num_product_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yfym_collection_num_product_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yfym_collection_num_product_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yfym_collection_num_product_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_primary_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_primary_category'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yfym_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yfym_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yfym_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yfym_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yfym_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yfym_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yfym_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yfym_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yfym_order_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yfym_order_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yfym_order_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yfym_order_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yfym_individual_vat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yfym_individual_vat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yfym_individual_vat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yfym_individual_vat'"
