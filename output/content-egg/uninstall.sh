#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_product_cat'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'content-egg_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cegg_lock_%' OR option_name LIKE '_site_transient_cegg_lock_%'"
wp transient delete 'cegg_prefill_batch_lock'
wp transient delete 'cegg_autoimport_lock'
wp transient delete 'cegg_product_import_batch_lock'

# Clear Cron Jobs
wp cron event delete 'cegg_link_index_backfill_once'
wp cron event delete 'cegg_link_index_delete_module'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cegg_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cegg_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cegg_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cegg_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cegg_import_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cegg_import_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cegg_import_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cegg_import_unique_id'"
