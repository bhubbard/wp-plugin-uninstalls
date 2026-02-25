#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'wacf_enable'
wp option delete 'wacf_minimum'
wp option delete 'wacf_maximum'
wp option delete 'wacf_enable_min'
wp option delete 'wacf_enable_max'
wp option delete 'wacf_type'
wp option delete 'wacf_fee_label'
wp option delete 'wacf_fee_charges'
wp option delete 'wacf_taxable'
wp option delete 'wacf_tax_class'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

