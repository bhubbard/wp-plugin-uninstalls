#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_checkout_page_id'
wp option delete 'betanet_epost_hfd_track_shipment_url'
wp option delete 'betanet_epost_hfd_cancel_shipment_url'
wp option delete 'betanet_epost_hfd_print_label_url'
wp option delete 'hfd_order_auto_sync'
wp option delete 'hfd_sync_order_items'
wp option delete 'betanet_epost_service_url'
wp option delete 'betanet_epost_hfd_service_url'
wp option delete 'hfd_auto_sync_time'
wp option delete 'hfd_auto_sync_status'

# Clear Cron Jobs
wp cron event delete 'hfd_schedule_auto_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfd_ship_cancel_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfd_ship_cancel_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfd_ship_cancel_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfd_ship_cancel_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfd_sync_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfd_sync_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfd_sync_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfd_sync_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hfd_rand_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hfd_rand_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hfd_rand_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hfd_rand_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'betanet_pmethod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'betanet_pmethod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'betanet_pmethod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'betanet_pmethod'"
