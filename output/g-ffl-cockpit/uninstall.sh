#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'g_ffl_cockpit_plugin_name'
wp option delete 'g_ffl_cockpit_key'
wp option delete 'g_ffl_cockpit_plugin_logo_url'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_enable_legacy_rest_api'
wp option delete 'woocommerce_webhook_delivery_enabled'
wp option delete 'woocommerce_session_handler'
wp option delete 'woocommerce_default_customer_address'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ffl_download_token_%' OR option_name LIKE '_site_transient_ffl_download_token_%'"
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'automated_listing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'automated_listing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'automated_listing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'automated_listing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_duplicate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_duplicate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_duplicate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_duplicate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_duplicated_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_duplicated_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_duplicated_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_duplicated_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_duplicated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_duplicated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_duplicated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_duplicated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_original_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_garidium_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_garidium_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_garidium_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_garidium_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manufacturer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_garidium_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_garidium_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_garidium_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_garidium_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_garidium_wpseo_json_ld'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_garidium_wpseo_json_ld'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_garidium_wpseo_json_ld'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_garidium_wpseo_json_ld'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'upc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'upc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'upc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'upc'"
