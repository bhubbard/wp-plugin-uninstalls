#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'condotel_total_units'
wp option delete 'condotel_max_stay'
wp option delete 'condotel_guest_tracking'
wp option delete 'condotel_notify_email'
wp option delete 'condotel_email_enabled'
wp option delete 'condotel_allow_unit_edit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Unit_Number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Unit_Number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Unit_Number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Unit_Number'"
