#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartship_enabled_cities'
wp option delete 'smartship_enabled_states'
wp option delete 'smartship_payment_gateway'
wp option delete 'smartship_status_radio'
wp option delete 'smartship_status_settings'
wp option delete 'smartship_wp_all_settings'
wp option delete 'smartship_token'
wp option delete 'smartship_ordermappingstatus'
wp option delete 'woocommerce_weight_unit'
wp option delete 'smartship_enabled_countries'
wp option delete 'smartship_demo_account'
wp option delete 'smartship_log_mode'
wp option delete 'smartship_version'

# Delete Transients
wp transient delete 'smartship_webhook_test'

# Clear Cron Jobs
wp cron event delete 'smartship_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartship_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartship_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartship_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartship_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tracking_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tracking_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tracking_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tracking_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aws_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aws_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aws_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aws_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartship_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartship_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartship_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartship_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smartship_shipment_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smartship_shipment_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smartship_shipment_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smartship_shipment_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cart_weight_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cart_weight_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cart_weight_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cart_weight_type'"
