#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdp_admin_options'
wp option delete 'cdp_db_name_update'
wp option delete 'cdp_theme_options'
wp option delete 'cdp_shortcode_options'
wp option delete 'wporg_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'rewrite_rules'
wp option delete 'cardealerpress_settings'
wp option delete 'cdp_transfer_options'
wp option delete 'cardealerpress_extender_settings'
wp option delete 'cdp_requirements_checked'
wp option delete 'has_rewrite_for_plugin_name_new_taxonomies'

# Delete Transients
wp transient delete 'cdp_manual_update_handler_processing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdp_manual_update_handler_processing_%' OR option_name LIKE '_site_transient_cdp_manual_update_handler_processing_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdp_company_check_update_handler_processing_%' OR option_name LIKE '_site_transient_cdp_company_check_update_handler_processing_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdp_company_processing_%' OR option_name LIKE '_site_transient_cdp_company_processing_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdp_check_for_company_update_%' OR option_name LIKE '_site_transient_cdp_check_for_company_update_%'"
wp transient delete 'cdp_custom_import_update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdp_auto_update_handler_processing_%' OR option_name LIKE '_site_transient_cdp_auto_update_handler_processing_%'"
wp transient delete 'dt_geo_data'
wp transient delete 'cdp_dealer_names'

# Clear Cron Jobs
wp cron event delete 'cdp_cron_inventory_update'
wp cron event delete 'cdp_cron_log_file_refresh'
wp cron event delete 'cdp_cron_company_handler_refresh'

