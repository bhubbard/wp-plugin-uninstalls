#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eventorganiservat_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eo_booking_vat_percent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eo_booking_vat_percent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eo_booking_vat_percent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eo_booking_vat_percent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eo_booking_vat_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eo_booking_vat_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eo_booking_vat_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eo_booking_vat_amount'"
