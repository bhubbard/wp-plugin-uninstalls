#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otoksa_city_mapping'
wp option delete 'ksa_nav_city_mapping'
wp option delete 'otoksa_shortcode_required'
wp option delete 'ksa_nav_shortcode_required'
wp option delete 'otoksa_refresh_token'
wp option delete 'ksa_nav_refresh_token'

# Delete Transients
wp transient delete 'otoksa_access_token'
wp transient delete 'ksa_nav_access_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_otoksa_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_otoksa_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_otoksa_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_otoksa_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ksa_national_address_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ksa_national_address_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ksa_national_address_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ksa_national_address_shortcode'"
