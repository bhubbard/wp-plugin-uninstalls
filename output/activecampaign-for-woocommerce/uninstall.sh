#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp option delete 'settings_activecampaign'
wp option delete 'activecampaign_for_woocommerce_dismiss_error_notice'
wp option delete 'activecampaign_for_woocommerce_abandoned_cart_last_run'
wp option delete 'activecampaign_for_woocommerce_last_order_sync'
wp option delete 'woocommerce_api_enabled'
wp option delete 'activecampaign_for_woocommerce_dismiss_plugin_notice'
wp option delete 'activecampaign_for_woocommerce_connection_health_check_last_run'
wp option delete 'activecampaign_for_woocommerce_settings'
wp option delete 'activecampaign_for_woocommerce_db_version'
wp option delete 'activecampaign_for_woocommerce_historical_sync_running_status'
wp option delete 'activecampaign_for_woocommerce_historical_sync_scheduled_status'
wp option delete 'activecampaign_for_woocommerce_historical_sync_stop'
wp option delete 'activecampaign_for_woocommerce_product_sync_last_status'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'activecampaign_for_woocommerce_historical_sync_delay'
wp option delete 'activecampaign_for_woocommerce_subscription_sync_last_run'
wp option delete 'activecampaign_for_woocommerce_last_subscription_sync'
wp option delete 'activecampaign_for_woocommerce_storage'

# Delete Transients
wp transient delete 'activecampaign_for_woocommerce_hs_contacts'
wp transient delete 'woocommerce_system_status_wp_version_check'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_activecampaign_for_woocommerce_contact%' OR option_name LIKE '_site_transient_activecampaign_for_woocommerce_contact%'"
wp transient delete 'activecampaign_for_woocommerce_connection'
wp transient delete 'activecampaign_for_woocommerce_all_connections'
wp transient delete 'activecampaign_for_woocommerce_features'
wp transient delete 'acforwc_cart_updated_hook'
wp transient delete 'acforwc_cart_to_order_transition_hook'
wp transient delete 'acforwc_order_created_hook'
wp transient delete 'acforwc_order_updated_hook'
wp transient delete 'acforwc_order_deleted_hook'
wp transient delete 'acforwc_abandoned_task_hook'

# Clear Cron Jobs
wp cron event delete 'activecampaign_for_woocommerce_run_product_sync'
wp cron event delete 'activecampaign_for_woocommerce_cart_updated_recurring_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activecampaign_for_woocommerce_ac_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activecampaign_for_woocommerce_ac_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activecampaign_for_woocommerce_ac_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activecampaign_for_woocommerce_ac_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activecampaign_for_woocommerce_last_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activecampaign_for_woocommerce_last_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activecampaign_for_woocommerce_last_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activecampaign_for_woocommerce_last_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activecampaign_for_woocommerce_hosted_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activecampaign_for_woocommerce_hosted_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activecampaign_for_woocommerce_hosted_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activecampaign_for_woocommerce_hosted_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
