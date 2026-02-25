#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpgp_option_settings'

# Delete Transients
wp transient delete '_wpgp_safe_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpgp_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpgp_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpgp_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpgp_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgp_page_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgp_page_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgp_page_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgp_page_options'"
