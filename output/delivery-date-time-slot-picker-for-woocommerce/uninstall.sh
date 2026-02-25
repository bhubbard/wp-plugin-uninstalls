#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'delidaam_delivery_blackout_dates'
wp option delete 'delidaam_delivery_time_slots'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Delivery Date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Delivery Date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Delivery Date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Delivery Date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Delivery Time Slot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Delivery Time Slot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Delivery Time Slot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Delivery Time Slot'"
