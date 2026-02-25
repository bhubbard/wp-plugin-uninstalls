#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'muzaara_google_scopes'
wp option delete 'muzaara_bing_accesstoken'
wp option delete 'muzaara_bing_scopes'
wp option delete 'muzaara_plugins'

# Delete Transients
wp transient delete 'muzaara_woopf_bing_taxonomies'
wp transient delete 'muzaara_woopf_bing_google_categories'
wp transient delete 'muzaara_bing_dev_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_product_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_product_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_product_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_product_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_feed_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_feed_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_feed_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_feed_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_push_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_push_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_push_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_push_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_refresh_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_refresh_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_refresh_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_refresh_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_last_refreshed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_last_refreshed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_last_refreshed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_last_refreshed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_dump_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_dump_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_dump_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_dump_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_merchant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_merchant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_merchant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_merchant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_catalog_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_catalog_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_catalog_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_catalog_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_running_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_running_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_running_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_running_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_notice_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_notice_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_notice_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_notice_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_category_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_category_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_category_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_category_mapping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_mappings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_mappings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_mappings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_mappings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_utm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_utm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_utm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_utm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'muzaara_woopf_bing_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'muzaara_woopf_bing_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'muzaara_woopf_bing_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'muzaara_woopf_bing_product_ids'"
