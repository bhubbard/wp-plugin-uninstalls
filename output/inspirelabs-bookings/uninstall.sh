#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inspirelabs_bookings_db'
wp option delete 'inspirelabs_bookings_short_booking'
wp option delete 'inspirelabs_bookings_advance'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_registered'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_booking_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_booking_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_booking_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_booking_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'booking_price_list_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'booking_price_list_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'booking_price_list_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'booking_price_list_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilabs_booking_fees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilabs_booking_fees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilabs_booking_fees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilabs_booking_fees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ilabs_bookings_24h_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ilabs_bookings_24h_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ilabs_bookings_24h_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ilabs_bookings_24h_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_advance_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_advance_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_advance_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_advance_date'"
