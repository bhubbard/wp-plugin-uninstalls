#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fivepost-page-number'
wp option delete 'fivepost-update-date'
wp option delete 'fivepost-barcode'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Clear Cron Jobs
wp cron event delete 'five_post_every_minute_event'
wp cron event delete 'five_post_hourly_event'
wp cron event delete 'five_post_deleteoldfiles_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fivepost_order_id_labelprintfile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fivepost_order_id_labelprintfile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fivepost_order_id_labelprintfile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fivepost_order_id_labelprintfile'"
