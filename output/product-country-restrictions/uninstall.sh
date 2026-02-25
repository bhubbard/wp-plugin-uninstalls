#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'product-country-restrictions-message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fz_restricted_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fz_restricted_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fz_restricted_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fz_restricted_countries'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fz_country_restriction_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fz_country_restriction_type'"
