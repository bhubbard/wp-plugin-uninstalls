#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'messos_woocommerce_forms_settings'
wp option delete 'messos_woocommerce_api_settings'
wp option delete 'messos_woocommerce_last_product_sync'
wp option delete 'messengeros_cart_automation_enabled'
wp option delete 'messengeros_woocommerce_store_id'
wp option delete 'messengeros_events_api_key'
wp option delete 'messengeros_events_api_secret'
wp option delete 'messengeros_store_id'
wp option delete 'messengeros_store_uuid'
wp option delete 'messengeros_woocommerce_dw_api_key'
wp option delete 'messengeros_woocommerce_dw_api_secret'
wp option delete 'messengeros_woocommerce_dw_webhook_secret'
wp option delete 'messengeros_woocommerce_dw_endpoints'
wp option delete 'messengeros_woocommerce_events_endpoints'
wp option delete 'messengeros_track_page_views'
wp option delete 'messengeros_events_endpoints'
wp option delete 'woocommerce_email_from_address'
wp option delete 'messengeros_woocommerce_needs_initial_sync'
wp option delete 'messengeros_woocommerce_initial_sync_status'
wp option delete 'messengeros_woocommerce_initial_sync_start'
wp option delete 'messengeros_woocommerce_initial_sync_total'
wp option delete 'messengeros_woocommerce_initial_sync_progress'
wp option delete 'messengeros_woocommerce_initial_sync_end'
wp option delete 'messengeros_woocommerce_initial_sync_results'
wp option delete 'messengeros_woocommerce_sync_notice_dismissed'
wp option delete 'messos_woocommerce_oauth_client_id'
wp option delete 'messos_woocommerce_oauth_client_secret'
wp option delete 'messos_woocommerce_oauth_auto_registered'
wp option delete 'messos_woocommerce_last_registration_attempt'
wp option delete 'messengeros_woocommerce_events_api_key'
wp option delete 'messengeros_woocommerce_events_api_secret'
wp option delete 'messengeros_flush_rewrite_rules'
wp option delete 'messos_woocommerce_oauth_credentials'
wp option delete 'messos_woocommerce_oauth_state'
wp option delete 'messos_woocommerce_dw_api_key'
wp option delete 'messos_woocommerce_dw_api_secret'
wp option delete 'messos_woocommerce_dw_webhook_secret'
wp option delete 'messos_woocommerce_dw_endpoints'
wp option delete 'messos_woocommerce_events_api_key'
wp option delete 'messos_woocommerce_events_api_secret'
wp option delete 'messos_woocommerce_events_endpoints'
wp option delete 'messos_woocommerce_store_id'
wp option delete 'messos_woocommerce_needs_initial_sync'
wp option delete 'messos_woocommerce_initial_sync_status'
wp option delete 'messos_woocommerce_initial_sync_start'
wp option delete 'messos_woocommerce_initial_sync_end'
wp option delete 'messos_woocommerce_initial_sync_total'
wp option delete 'messos_woocommerce_initial_sync_progress'
wp option delete 'messos_woocommerce_initial_sync_results'
wp option delete 'messos_woocommerce_sync_notice_dismissed'

# Clear Cron Jobs
wp cron event delete 'messos_woocommerce_scheduled_product_sync'
wp cron event delete 'messengeros_woocommerce_perform_initial_sync'
wp cron event delete 'messengeros_woocommerce_check_initial_sync'
wp cron event delete 'messos_woocommerce_check_token_validity'
wp cron event delete 'messos_send_webhook'
wp cron event delete 'messengeros_check_initial_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_demo_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_demo_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_demo_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_demo_image_url'"
