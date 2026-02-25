#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mercantor_feed_token'
wp option delete 'mercantor_wizard_data'
wp option delete 'mercantor_google_client_id'
wp option delete 'mercantor_google_client_secret'
wp option delete 'woo_feed_auto_update_interval'
wp option delete 'woo_feed_batch_limit'
wp option delete 'mercantor_migration_completed'
wp option delete 'mercantor_settings'
wp option delete 'mercantor_rules'
wp option delete 'trp_settings'
wp option delete 'mercantor_exchange_rates'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp transient delete 'mercantor_sync_total'
wp transient delete 'mercantor_sync_processed'
wp transient delete 'mercantor_sync_started_at'
wp transient delete 'mercantor_oauth_state'
wp transient delete 'mercantor_oauth_return_url'

# Clear Cron Jobs
wp cron event delete 'mercantor_sync_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mercantor_setup_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mercantor_setup_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mercantor_setup_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mercantor_setup_notice_dismissed'"
