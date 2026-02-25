#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oasis_import_options'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'oasis_import_progress'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'oasis_import_schedule_run'
wp cron event delete 'oasis_import_schedule_up'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oasis_cat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oasis_cat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oasis_cat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oasis_cat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'oasis_queue_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'oasis_queue_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'oasis_queue_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'oasis_queue_id'"
