#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'techfinder_options'

# Delete Transients
wp transient delete 'techfinder_update_brands_cron_running'
wp transient delete 'techfinder_process_products_cron_running'
wp transient delete 'techfinder_regenerate_products_cron_running'
wp transient delete 'techfinder_regenerate_without_image_products_cron_running'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'techfinder_process_products_cron'
wp cron event delete 'techfinder_update_brands_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'techfinder_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'techfinder_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'techfinder_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'techfinder_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'techfinder_compatible_with'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'techfinder_compatible_with'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'techfinder_compatible_with'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'techfinder_compatible_with'"
