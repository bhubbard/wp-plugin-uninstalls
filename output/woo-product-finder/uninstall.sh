#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfp_where_hear_about_us'
wp option delete 'wpfp_data_submited_in_sendiblue'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wpfp_version'
wp option delete 'md_woocommerce_shipping_method_format'
wp option delete 'woocommerce_recommoded_product_record'

# Delete Transients
wp transient delete '_welcome_screen_activation_redirect_wpfp'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_prd_att_qry%' OR option_name LIKE '_site_transient_prd_att_qry%'"
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

