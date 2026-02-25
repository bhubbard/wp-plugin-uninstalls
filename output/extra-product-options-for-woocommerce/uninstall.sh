#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epofw_view_preference'
wp option delete 'epofw_row_association_migration_done'
wp option delete 'epofw_custom_table_migration_complete'
wp option delete 'epofw_custom_table_migration_total'
wp option delete 'epofw_custom_table_migration_count'
wp option delete 'epofw_enable_logging'
wp option delete 'epofw_install_date'
wp option delete 'epofw_custom_tables_version'
wp option delete 'epofw_demo_addons_imported'
wp option delete 'epofw_pending_demo_import'
wp option delete 'epofw_migration_count'
wp option delete 'epofw_general_data'
wp option delete 'epofw_migration_304'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'epofw_custom_table_migration_completed_at'
wp option delete 'epofw_layout_type_migration_done'
wp option delete 'epofw_row_groups_cleanup_done'
wp option delete 'epofw_columns_groups_migration_complete'
wp option delete 'epofw_use_custom_tables'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'woocs'
wp option delete 'epofw_global_settings'

# Delete Transients
wp transient delete 'epofw_custom_table_migration_running'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epofw_mgr_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epofw_mgr_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epofw_mgr_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epofw_mgr_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epofw_review_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epofw_review_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epofw_review_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epofw_review_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epofw_migrated_to_custom_tables'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epofw_migrated_to_custom_tables'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epofw_migrated_to_custom_tables'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epofw_migrated_to_custom_tables'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epofw_prd_opt_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epofw_prd_opt_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epofw_prd_opt_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epofw_prd_opt_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'migration_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'migration_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'migration_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'migration_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'epofw_migrated_to_tables'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'epofw_migrated_to_tables'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'epofw_migrated_to_tables'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'epofw_migrated_to_tables'"
