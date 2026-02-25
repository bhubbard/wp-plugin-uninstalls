#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pwcp_category_assignments_%'"
wp option delete 'pwcp_last_settings_export'
wp option delete 'pwcp_general_settings'
wp option delete 'pwcp_design_settings'
wp option delete 'pwcp_calculation_settings'
wp option delete 'pwcp_text_settings'
wp option delete 'pwcp_advanced_settings'
wp option delete 'pwcp_uninstall_delete_data'
wp option delete 'pwcp_uninstall_settings_exported'
wp option delete 'pwcp_activation_time'
wp option delete 'pwcp_plugin_version'
wp option delete 'pwcp_db_version'
wp option delete 'pwcp_enable_calculation_logging'
wp option delete 'pwcp_deactivation_time'
wp option delete 'pwcp_column_migration_completed'
wp option delete 'pwcp_uninstall_notice_dismissed'
wp option delete 'pwcp_data_preserved_on'

# Delete Transients
wp transient delete 'pwcp_import_export_notice'
wp transient delete 'pwcp_uninstall_preference_saved'

# Clear Cron Jobs
wp cron event delete 'pwcp_daily_cleanup'
wp cron event delete 'pwcp_weekly_analytics_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwcp_calculator_view'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwcp_calculator_view'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwcp_calculator_view'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwcp_calculator_view'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pwcp_assigned_calculators'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pwcp_assigned_calculators'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pwcp_assigned_calculators'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pwcp_assigned_calculators'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
