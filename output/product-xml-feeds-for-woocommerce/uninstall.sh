#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_product_xml_feeds_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_turn_off_wp_schedule_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_enabled_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_create_products_xml_cron_time_%'"
wp option delete 'alg_products_xml_feeds_security_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_time_file_created_%'"
wp option delete 'alg_products_xml_php_memory_limit'
wp option delete 'alg_products_xml_php_time_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_lang_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_header_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_footer_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_item_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_variation_item_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_text_item_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_orderby_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_order_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_products_incl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_products_excl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_cats_incl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_cats_excl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_tags_incl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_tags_excl_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_scope_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_variable_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_offset_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_total_products_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_create_text_feed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_tags_if_empty_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_product_type_include_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_custom_meta_incl_%'"
wp option delete 'alg_products_xml_raw_input'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_enabled_branding_%'"
wp option delete 'alg_products_xml_query_block_size'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_products_status_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_text_file_path_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_file_path_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_use_home_url_%'"
wp option delete 'alg_product_xml_feeds_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_products_xml_feed_title_%'"
wp option delete 'alg_products_xml_ajax_load_filtering_option'
wp option delete 'alg_products_xml_ajax_feed_creation_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'woocommerce_version'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
