#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wog_settings'
wp option delete 'wog_sitemap_last_generated'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_store_phone'
wp option delete 'woocommerce_store_email'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_default_state'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woo_open_graph_settings'
wp option delete 'wog_migration_completed'
wp option delete 'wog_rewrite_rules_flushed_v2'
wp option delete 'wog_version'
wp option delete 'wog_flush_rewrite_rules'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wog_product_meta_%' OR option_name LIKE '_site_transient_wog_product_meta_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wog_product_schema_%' OR option_name LIKE '_site_transient_wog_product_schema_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wog_category_meta_%' OR option_name LIKE '_site_transient_wog_category_meta_%'"

# Clear Cron Jobs
wp cron event delete 'wog_generate_single_sitemap'
wp cron event delete 'wog_generate_sitemaps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wog_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wog_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wog_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wog_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wog_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wog_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wog_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wog_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wog_disable_og'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wog_disable_og'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wog_disable_og'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wog_disable_og'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manufacturer_part_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manufacturer_part_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manufacturer_part_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manufacturer_part_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_model'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_material'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_material'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_material'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_material'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price_dates_to'"
