#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'booking_admin_email'
wp option delete 'booking_form_page'
wp option delete 'booking_order_page'
wp option delete 'booking_thankyou_page'
wp option delete 'book_open_till'
wp option delete 'booking_admin_email_from_name'
wp option delete 'schd_booking_price'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_address'"
