#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fah_settings'
wp option delete 'fah_select_export_run'
wp option delete 'fah_select_import_run'
wp option delete 'fah_download_image_cron_run_time'
wp option delete 'fah_download_success_images'
wp option delete 'fah_select_sync_run'
wp option delete 'fah_full_import_success'
wp option delete 'fah_import_success_images'
wp option delete 'fah_full_import_error'
wp option delete 'fah_full_update_success'
wp option delete 'FLoraathome_bulk_order_execution'
wp option delete 'fah_update_success_images'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'task_flora_image_import'
wp cron event delete 'task_flora_product_update'
wp cron event delete 'task_flora_product_sync'
wp cron event delete 'task_flora_order_export'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fah_orderExport'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fah_orderExport'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fah_orderExport'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fah_orderExport'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pending_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pending_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pending_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pending_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flora_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flora_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flora_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flora_product'"
