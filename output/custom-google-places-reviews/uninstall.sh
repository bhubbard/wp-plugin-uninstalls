#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_custom_cgpr_google_palce_reviews_%' OR option_name LIKE '_site_transient_custom_cgpr_google_palce_reviews_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_custom_google_palce_photo_%' OR option_name LIKE '_site_transient_custom_google_palce_photo_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'google_palce_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'google_palce_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'google_palce_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'google_palce_id'"
