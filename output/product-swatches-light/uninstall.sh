#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etfw_transients'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delete_on_uninstall'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_disable_cache'"
wp option delete 'wc_lw_product_swatches_delete_on_uninstall'
wp option delete 'product_swatches_schedules'
wp option delete 'esfw_step_label'
wp option delete 'esfw_step'
wp option delete 'esfw_max_steps'
wp option delete 'psl_product_attribute'
wp option delete 'psl_product_attribute_terms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_position_in_list'"
wp option delete 'lw_swatches_tasks'
wp option delete 'productSwatchesEnableRegenerationSchedule'
wp option delete 'productSwatchesRegenerationScheduleInterval'
wp option delete 'esfw_running'
wp option delete 'esfw_completed'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs
wp cron event delete 'woocommerce_flush_rewrite_rules'
wp cron event delete 'lw_swatches_run_tasks'

