#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smart_auto_sku_generator_category_prefixes'
wp option delete 'smart_auto_sku_generator_sku_length'
wp option delete 'smart_auto_sku_generator_overwrite_existing'
wp option delete 'smart_auto_sku_generator_auto_bulk_generation'
wp option delete 'smart_auto_sku_generator_use_dynamic_prefix'
wp option delete 'smart_auto_sku_generator_enable_logging'
wp option delete 'smart_auto_sku_generator_bulk_job'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'smart_auto_sku_generator_backup_%'"
wp option delete 'smart_auto_sku_generator_last_cleanup'
wp option delete 'smart_auto_sku_generator_preserve_skus_on_uninstall'

# Delete Transients
wp transient delete 'smart_auto_sku_generator_admin_notices'

# Clear Cron Jobs
wp cron event delete 'smart_auto_sku_generator_auto_bulk_generation'
wp cron event delete 'smart_auto_sku_generator_process_batch'
wp cron event delete 'smart_auto_sku_generator_complete_bulk_generation'
wp cron event delete 'smart_auto_sku_generator_cleanup_logs'
wp cron event delete 'smart_auto_sku_generator_cleanup_old_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smarausk_force_overwritten'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smarausk_force_overwritten'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smarausk_force_overwritten'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smarausk_force_overwritten'"
