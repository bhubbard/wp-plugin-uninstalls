#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdpg_hpos_migration_status'
wp option delete 'bdpg_hpos_migration_total'
wp option delete 'bdpg_hpos_migration_processed'
wp option delete 'bdpg_hpos_migration_gateway'
wp option delete 'bdpg_hpos_migration_last_offset'
wp option delete 'bdpg_hpos_migration_start_time'
wp option delete 'bdpg_hpos_migration_end_time'
wp option delete 'bdpg_do_activation_redirect'
wp option delete 'bdpg_hpos_notice_dismissed'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_accounts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'bdpg_currency_settings'
wp option delete 'woocommerce_woo_bkash_settings'
wp option delete 'woocommerce_woo_rocket_settings'
wp option delete 'woocommerce_woo_nagad_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_trans_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_trans_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_trans_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_trans_id'"
