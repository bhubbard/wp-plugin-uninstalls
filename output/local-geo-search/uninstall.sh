#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geo_seo_option_name'
wp option delete 'geo_seo_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layout'"
