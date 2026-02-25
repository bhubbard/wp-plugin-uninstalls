#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpgpsc_option_settings'

# Delete Transients
wp transient delete '_gpsc_safe_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpgpsc_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpgpsc_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpgpsc_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpgpsc_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgpsc_page_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgpsc_page_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgpsc_page_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgpsc_page_options'"
