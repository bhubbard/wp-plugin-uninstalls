#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'truebeep_connection_status'
wp option delete 'truebeep_coupons'
wp option delete 'truebeep_tiers'
wp option delete 'truebeep_redeem_method'
wp option delete 'truebeep_earning_value'
wp option delete 'truebeep_redeeming_value'
wp option delete 'truebeep_earn_on_redeemed'
wp option delete 'truebeep_api_logs'
wp option delete 'truebeep_award_points_status'
wp option delete 'truebeep_show_loyalty_panel'
wp option delete 'truebeep_panel_position'
wp option delete 'truebeep_installed'
wp option delete 'truebeep_version'
wp option delete 'truebeep_sync_status'
wp option delete 'truebeep_sync_started_at'
wp option delete 'truebeep_sync_completed_at'
wp option delete 'truebeep_sync_progress'
wp option delete 'truebeep_sync_rate_limit'
wp option delete 'truebeep_sync_last_update'
wp option delete 'truebeep_sync_lock'
wp option delete 'truebeep_sync_log'
wp option delete 'truebeep_api_url'
wp option delete 'truebeep_api_key'
wp option delete 'truebeep_wallet_id'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'truebeep_smwl_sync_healthcheck'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_last_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_last_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_last_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_last_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_sync_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_sync_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_sync_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_sync_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_loyalty_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_loyalty_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_loyalty_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_loyalty_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_total_earned_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_total_earned_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_total_earned_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_total_earned_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_total_spent_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_total_spent_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_total_spent_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_total_spent_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_tier_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_tier_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_tier_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_tier_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_tier_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_tier_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_tier_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_tier_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_sync_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_sync_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_sync_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_sync_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_synced_stats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_synced_stats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_synced_stats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_synced_stats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_truebeep_historical_points_awarded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_truebeep_historical_points_awarded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_truebeep_historical_points_awarded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_truebeep_historical_points_awarded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
