#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_cc_travel_options'

# Delete Transients
wp transient delete 'cc-framework-transient'
wp transient delete 'cc-metabox-transient'
wp transient delete 'cc-taxonomy-transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tour_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tour_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tour_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tour_details'"
