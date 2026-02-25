#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcerply_api_error'
wp option delete 'wcerply_sync_enabled'
wp option delete 'wcerply_installation_id'
wp option delete 'wcerply_product_term_map'
wp option delete 'wcerply_vat_rates_map'
wp option delete 'wcerply_stats_total_categories'
wp option delete 'wcerply_stats_total_products'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'wcerply_stats_total_variations'

# Delete Transients
wp transient delete 'wcerply_generating_queue'
wp transient delete 'wcerply_license_notice'

# Clear Cron Jobs
wp cron event delete 'wcerply_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erply_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erply_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erply_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erply_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_attachment_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_attachment_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_attachment_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_attachment_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
