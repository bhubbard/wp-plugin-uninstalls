#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'h24_ca_gdpr_message'

# Clear Cron Jobs
wp cron event delete 'h24_cartflow_ca_update_order_status_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_database_admin_active_db'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_database_admin_active_db'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_database_admin_active_db'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_database_admin_active_db'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsTicketsGenerated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsTicketsGenerated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsTicketsGenerated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsTicketsGenerated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsTicketID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsTicketHash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsTicketHash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsTicketHash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsTicketHash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'WooCommerceEventsProductID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'WooCommerceEventsProductID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'WooCommerceEventsProductID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'WooCommerceEventsProductID'"
