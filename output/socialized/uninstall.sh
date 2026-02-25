#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%all_slugs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%redirecting'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socialized_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socialized_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socialized_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socialized_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%slug'"
