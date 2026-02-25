#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uber_direct_mode'
wp option delete 'uber_direct_client_id'
wp option delete 'uber_direct_secret_id'
wp option delete 'uber_direct_access_token'
wp option delete 'uber_direct_undeliverable_action'
wp option delete 'uber_direct_deliverable_action'
wp option delete 'uber_direct_pin_verification'
wp option delete 'uber_direct_high_value_threshold'
wp option delete 'uber_direct_enable_testing'
wp option delete 'uber_direct_pickup_verification'
wp option delete 'uber_direct_dropoff_verification'
wp option delete 'uber_direct_asap_prep_minutes'
wp option delete 'uber_direct_root_org_id'
wp option delete 'uber_direct_webhook_enabled'
wp option delete 'uber_direct_webhook_signing_key'
wp option delete 'uber_direct_enable_asap'
wp option delete 'uber_direct_enable_scheduled'
wp option delete 'woocommerce_currency_pos'
wp option delete 'uber_direct_schedule_max_days'
wp option delete 'uber_direct_schedule_min_time'
wp option delete 'uber_direct_schedule_max_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_direct_delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_direct_delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_direct_delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_direct_delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_scheduled_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_scheduled_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_scheduled_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_scheduled_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_scheduled_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_scheduled_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_scheduled_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_scheduled_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_direct_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_direct_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_direct_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_direct_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_direct_eta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_direct_eta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_direct_eta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_direct_eta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_direct_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_direct_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_direct_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_direct_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_selected_store_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_selected_store_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_selected_store_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_selected_store_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_selected_org_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_selected_org_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_selected_org_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_selected_org_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uber_direct_workflow_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uber_direct_workflow_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uber_direct_workflow_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uber_direct_workflow_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_time'"
