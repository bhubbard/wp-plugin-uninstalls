#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sibro_product_sync_enable_logs'
wp option delete 'sibro_product_sync_auto_sync'
wp option delete 'sibro_product_sync_api_key'
wp option delete 'sibro_product_sync_filter_categories'
wp option delete 'sibro_product_sync_reseller_discount_type'
wp option delete 'sibro_product_sync_reseller_discount_value'
wp option delete 'sibro_product_sync_apply_discount_to'
wp option delete 'sibro_product_sync_filter_product_status'
wp option delete 'sibro_product_sync_sync_on_order'
wp option delete 'sibro_product_sync_sync_on_stock_change'
wp option delete 'sibro_product_sync_show_sync_on_product_page'
wp option delete 'sibro_last_sync_time'
wp option delete 'sibro_product_sync_api_endpoint'
wp option delete 'sibro_product_sync_needs_configuration'
wp option delete 'sibro_collections_mapped'
wp option delete 'sibro_category_counter_synced'
wp option delete 'sibrox_fallback_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sibro_product_sync_%'"
wp option delete 'sibro_product_sync_config_notice_dismissed'
wp option delete 'sibro_product_sync_sync_notice_dismissed'
wp option delete 'sibro_product_sync_db_version'

# Clear Cron Jobs
wp cron event delete 'sibro_product_sync_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sibro_sync_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sibro_sync_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sibro_sync_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sibro_sync_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sibro_discount_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sibro_discount_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sibro_discount_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sibro_discount_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sibro_discount_value_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sibro_discount_value_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sibro_discount_value_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sibro_discount_value_override'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sibro_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sibro_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sibro_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sibro_last_sync'"
