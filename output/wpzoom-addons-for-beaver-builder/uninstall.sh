#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpzabb_global_settings'
wp option delete 'wpzabb_hide_branding'
wp option delete 'wpzoom_force_check_extensions'
wp option delete 'wpzabb_lite_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpzabb-cta-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpzabb-cta-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpzabb-cta-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpzabb-cta-link'"
