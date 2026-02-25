#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'ambisn_table_items_per_page'
wp option delete 'ambisn_table_emails_per_page'
wp option delete 'ambisn_feedback_popup'
wp option delete 'ambisn_lang_fixed_products'
wp option delete 'ambisn_plugin_data'
wp option delete 'ambisn_migration_product_ids'
wp option delete 'ambisn_migration_offset'
wp option delete 'wc_admail_subscriptions_migration_status'

# Delete Transients
wp transient delete 'ambisn_migration_notice'
wp transient delete 'wc_admail_processed_count'
wp transient delete 'wc_admail_subscriptions_progress'

# Clear Cron Jobs
wp cron event delete 'ambisn_subscription_migration_event'
wp cron event delete 'ambisn_migrate_subscriptions_end_event'
wp cron event delete 'ambisn_migration_get_product_ids_task'
wp cron event delete 'ambisn_migrate_subscriptions_task'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_admail_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_admail_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_admail_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_admail_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_admail_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_admail_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_admail_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_admail_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_admail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_admail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_admail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_admail'"
